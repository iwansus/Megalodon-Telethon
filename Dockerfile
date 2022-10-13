
#      Created by: MegaLodon
#=========× MegaLodon ×=========#

FROM nandeuserbot/nandebot:nande

RUN git clone -b MegaLodon-Telethon https://github.com/iwansus/Megalodon-Telethon /home/megalodontelethon/ \
    && chmod 777 /home/nandetelethon \
    && mkdir /home/nandetelethon/bin/

COPY ./sample_config.env ./config.env* /home/megalodontelethon/

WORKDIR /home/megalodontelethon/

RUN pip install -r requirements.txt

CMD ["bash","start"]
