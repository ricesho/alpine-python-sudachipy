FROM alpine:3.7

RUN apk --no-cache --update-cache \
    add python3 \
	git \
        curl \
        unzip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && pip install --no-cache-dir --upgrade pip

RUN git clone https://github.com/WorksApplications/SudachiPy.git \
    && cd SudachiPy \
    && pip3 install -e .

RUN wget -q https://github.com/WorksApplications/Sudachi/releases/download/v0.1.0/sudachi-0.1.0-dictionary-core.zip \
    && unzip sudachi-0.1.0-dictionary-core.zip \
    && mv system_core.dic SudachiPy/resources/system.dic
