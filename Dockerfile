FROM python:3.9
ENV PYTHONUNBUFFERED 1

COPY . .

RUN pip install --upgrade pip \
    && pip install pptx2md

ENTRYPOINT ["pptx2md"]

# Build:
#   docker build -t pptx2md .
#
# Smple usage:
#	Put your pptx file in the /input directory.
#	Ensure that the directories /output, and /output/images exist, then run:
#		docker run -it --rm -v ${PWD}/input:/input -v ${PWD}/output:/output pptx2md /input/MyPresentation.pptx -o /output/MyPresentation.md -i /output/images
#   find your output file in the /output directory and the related images in /output/images .