mcore-docs
==========

.. image:: https://travis-ci.org/caianrais/mcore-docs.svg?branch=master
        :target: https://travis-ci.org/caianrais/mcore-docs

.. |br| raw:: html

   <br />

``mcore-docs`` é o repositório de documentação do projeto `mcore`_. A
documentação é autogerada a partir do utilitário `aglio`_, que converte o
formato ``apib`` (`API Blueprint`_) em uma página estática HTML.

.. _mcore: https://github.com/caianrais/mcore
.. _aglio: https://github.com/danielgtaylor/aglio
.. _API Blueprint: https://apiblueprint.org

Requerimentos
-------------

- `NodeJS`_
- `NPM`_

.. _NodeJS: https://nodejs.org
.. _NPM: https://www.npmjs.com


Uso
---

::

    # Instale as dependências
    $ npm install

    # Arquivo estático (em /docs/index.html)
    $ make docs

    # Live server para desenvolvimento
    $ make live
