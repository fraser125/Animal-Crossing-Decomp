lbl_80371978:
/* 80371978  90 83 00 00 */	stw r4, 0(r3)
/* 8037197C  38 00 00 00 */	li r0, 0
/* 80371980  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 80371984  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80371988  90 A3 00 08 */	stw r5, 8(r3)
/* 8037198C  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 80371990  80 A5 00 08 */	lwz r5, 8(r5)
/* 80371994  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80371998  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 8037199C  80 A5 00 04 */	lwz r5, 4(r5)
/* 803719A0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 803719A4  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 803719A8  80 84 00 00 */	lwz r4, 0(r4)
/* 803719AC  90 83 00 04 */	stw r4, 4(r3)
/* 803719B0  90 03 00 14 */	stw r0, 0x14(r3)
/* 803719B4  90 03 00 18 */	stw r0, 0x18(r3)
/* 803719B8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803719BC  4E 80 00 20 */	blr 
