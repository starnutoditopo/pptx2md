FROM python:3.9
ENV PYTHONUNBUFFERED 1

COPY . .

RUN pip install --upgrade pip \
    && pip install pptx2md

CMD ["/bin/bash"]
# Build:
#   docker build -t pptx2md .
#
# Run:
#   docker run -it --rm -v ${PWD}/input:/input -v ${PWD}/output:/output pptx2md pptx2md /input/ContainerizedUtilities.pptx -o /output/ContainerizedUtilities.md -i /output/images