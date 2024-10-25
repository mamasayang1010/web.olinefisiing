        transactions (Sequence[:class:`telegram.StarTransaction`]): The list of transactions.

    Attributes:
        transactions (tuple[:class:`telegram.StarTransaction`]): The list of transactions.
    """

    __slots__ = ("transactions",)

    def __init__(
        self, transactions: Sequence[StarTransaction], *, api_kwargs: Optional[JSONDict] = None
    ):
        super().__init__(api_kwargs=api_kwargs)
        self.transactions: tuple[StarTransaction, ...] = parse_sequence_arg(transactions)

        self._id_attrs = (self.transactions,)
        self._freeze()

    @classmethod
    def de_json(
        cls, data: Optional[JSONDict], bot: Optional["Bot"] = None
    ) -> Optional["StarTransactions"]:
        """See :meth:`telegram.TelegramObject.de_json`."""
        data = cls._parse_data(data)

        if data is None:
            return None

        data["transactions"] = StarTransaction.de_list(data.get("transactions"), bot)
        return super().de_json(data=data, bot=bot)
