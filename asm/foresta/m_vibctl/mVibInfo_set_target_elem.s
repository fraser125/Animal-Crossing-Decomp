lbl_80403C04:
/* 80403C04  80 03 01 14 */	lwz r0, 0x114(r3)
/* 80403C08  3C 80 80 64 */	lis r4, lit_467@ha /* 0x806435D8@ha */
/* 80403C0C  C0 24 35 D8 */	lfs f1, lit_467@l(r4)  /* 0x806435D8@l */
/* 80403C10  38 A3 00 04 */	addi r5, r3, 4
/* 80403C14  38 80 00 00 */	li r4, 0
/* 80403C18  7C 09 03 A6 */	mtctr r0
/* 80403C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80403C20  40 81 00 20 */	ble lbl_80403C40
lbl_80403C24:
/* 80403C24  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 80403C28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80403C2C  40 81 00 0C */	ble lbl_80403C38
/* 80403C30  FC 20 00 90 */	fmr f1, f0
/* 80403C34  7C A4 2B 78 */	mr r4, r5
lbl_80403C38:
/* 80403C38  38 A5 00 44 */	addi r5, r5, 0x44
/* 80403C3C  42 00 FF E8 */	bdnz lbl_80403C24
lbl_80403C40:
/* 80403C40  90 83 00 00 */	stw r4, 0(r3)
/* 80403C44  4E 80 00 20 */	blr 