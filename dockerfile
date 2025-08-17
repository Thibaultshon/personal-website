FROM clfoundation/sbcl:alpine3.14 as builder

WORKDIR /root/common-lisp/
COPY . /root/common-lisp/

ENV QUICKLISP_ADD_TO_INIT_FILE=true


RUN apk add --no-cache curl git

RUN curl -O https://beta.quicklisp.org/quicklisp.lisp


RUN sbcl --non-interactive --load quicklisp.lisp \
    --eval "(quicklisp-quickstart:install)" \
    --eval "(ql-util:without-prompting (ql:add-to-init-file))"

RUN sbcl --eval "(pushnew (uiop:getcwd) ql:*local-project-directories*)"\
         --eval "(ql:quickload :personal-website)"\
         --load app.lisp \
         --eval "(sb-ext:save-lisp-and-die \"core\" :toplevel #'app:main  :executable t)"


FROM clfoundation/sbcl:alpine3.14 



RUN adduser -D app
USER app




COPY --from=builder /root/common-lisp/core .
COPY --from=builder /root/common-lisp/ .


EXPOSE 4242

ENTRYPOINT ["sbcl", "--core", "core"]