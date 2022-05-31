lbl_80405DE0:
/* 80405DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405DE4  7C 08 02 A6 */	mflr r0
/* 80405DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405DF0  7C 9F 23 78 */	mr r31, r4
/* 80405DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80405DF8  7C 7E 1B 78 */	mr r30, r3
/* 80405DFC  4B C7 4E 29 */	bl func_8007AC24
/* 80405E00  3C 80 81 1C */	lis r4, this@ha /* 0x811C56B4@ha */
/* 80405E04  93 FE 00 04 */	stw r31, 4(r30)
/* 80405E08  38 A4 56 B4 */	addi r5, r4, this@l /* 0x811C56B4@l */
/* 80405E0C  80 85 00 00 */	lwz r4, 0(r5)
/* 80405E10  80 04 03 B0 */	lwz r0, 0x3b0(r4)
/* 80405E14  90 1E 00 00 */	stw r0, 0(r30)
/* 80405E18  80 85 00 00 */	lwz r4, 0(r5)
/* 80405E1C  93 C4 03 B0 */	stw r30, 0x3b0(r4)
/* 80405E20  4B C7 4E 2D */	bl OSRestoreInterrupts
/* 80405E24  3C 60 81 1C */	lis r3, this@ha /* 0x811C56B4@ha */
/* 80405E28  80 83 56 B4 */	lwz r4, this@l(r3)  /* 0x811C56B4@l */
/* 80405E2C  88 04 03 B4 */	lbz r0, 0x3b4(r4)
/* 80405E30  28 00 00 01 */	cmplwi r0, 1
/* 80405E34  41 80 00 14 */	blt lbl_80405E48
/* 80405E38  80 7E 00 04 */	lwz r3, 4(r30)
/* 80405E3C  38 84 00 20 */	addi r4, r4, 0x20
/* 80405E40  38 A0 00 00 */	li r5, 0
/* 80405E44  4B C5 A2 F9 */	bl osSendMesg
lbl_80405E48:
/* 80405E48  3C 60 81 1C */	lis r3, this@ha /* 0x811C56B4@ha */
/* 80405E4C  80 83 56 B4 */	lwz r4, this@l(r3)  /* 0x811C56B4@l */
/* 80405E50  88 04 03 B4 */	lbz r0, 0x3b4(r4)
/* 80405E54  28 00 00 02 */	cmplwi r0, 2
/* 80405E58  41 80 00 14 */	blt lbl_80405E6C
/* 80405E5C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80405E60  38 84 00 40 */	addi r4, r4, 0x40
/* 80405E64  38 A0 00 00 */	li r5, 0
/* 80405E68  4B C5 A2 D5 */	bl osSendMesg
lbl_80405E6C:
/* 80405E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405E78  7C 08 03 A6 */	mtlr r0
/* 80405E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405E80  4E 80 00 20 */	blr 
