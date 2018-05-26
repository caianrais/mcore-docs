mcore-docs
==========

.. image:: https://travis-ci.org/caianrais/mcore-docs.svg?branch=master
        :target: https://travis-ci.org/caianrais/mcore-docs

``mcore-docs`` é o repositório de documentação do projeto `mcore`_. A
documentação é autogerada a partir do utilitário `aglio`_, que converte o
formato ``apib`` (`API Blueprint`_) em uma página estática HTML.

Requerimentos
-------------

- NodeJS
- NPM


Uso
---

::

    # Instale as dependências
    $ npm install

    # Arquivo estático (em /docs/index.html)
    $ make docs

    # Live server para desenvolvimento
    $ make live
