#!/bin/bash
pip install -r requirements.txt
pip install --upgrade fastapi==0.90.1


pip install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b
pip install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1

# deforum-for-automatic1111-webui
pip install -r extensions/deforum-for-automatic1111-webui/requirements.txt
pip install timm==0.6.12

# for CodeFormer
cd repositories/CodeFormer && git checkout c5b4593074ba6214284d6acd5f1719b6c5d739af && cd -

pip install --prefer-binary -r repositories/CodeFormer/requirements.txt
pip install rich

cd repositories/CodeFormer && python basicsr/setup.py develop && cd -


pip uninstall basicsr -y && pip install basicsr
pip uninstall basicsr -y && pip install basicsr

