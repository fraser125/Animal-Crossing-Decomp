lbl_80556BC8:
/* 80556BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556BCC  7C 08 02 A6 */	mflr r0
/* 80556BD0  38 80 00 00 */	li r4, 0
/* 80556BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556BD8  80 03 07 14 */	lwz r0, 0x714(r3)
/* 80556BDC  2C 00 00 4F */	cmpwi r0, 0x4f
/* 80556BE0  40 82 00 30 */	bne lbl_80556C10
/* 80556BE4  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80556BE8  2C 00 00 01 */	cmpwi r0, 1
/* 80556BEC  40 82 00 24 */	bne lbl_80556C10
/* 80556BF0  38 A0 00 4E */	li r5, 0x4e
/* 80556BF4  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80556BF8  B0 A3 09 76 */	sth r5, 0x976(r3)
/* 80556BFC  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80556C00  B0 A3 09 74 */	sth r5, 0x974(r3)
/* 80556C04  90 03 09 64 */	stw r0, 0x964(r3)
/* 80556C08  4B E4 37 AD */	bl mDemo_Set_ListenAble
/* 80556C0C  38 80 00 01 */	li r4, 1
lbl_80556C10:
/* 80556C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556C14  7C 83 23 78 */	mr r3, r4
/* 80556C18  7C 08 03 A6 */	mtlr r0
/* 80556C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80556C20  4E 80 00 20 */	blr 
