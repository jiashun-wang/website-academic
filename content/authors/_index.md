---
# To publish author profile pages, remove all the `_build` and `cascade` settings below.
_build:
  render: never
cascade:
  _build:
    render: never
    list: always

# Generate the /admin/ page
type: decap_cms
private: true
outputs:
  - decap_cms_config
  - HTML
---



