lbl_805799E8:
/* 805799E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805799EC  7C 08 02 A6 */	mflr r0
/* 805799F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805799F4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805799F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805799FC  3C A5 00 02 */	addis r5, r5, 2
/* 80579A00  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 80579A04  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80579A08  7C 00 18 40 */	cmplw r0, r3
/* 80579A0C  41 82 00 0C */	beq lbl_80579A18
/* 80579A10  38 A0 00 0B */	li r5, 0xb
/* 80579A14  48 00 2A A1 */	bl aNSC_setupAction
lbl_80579A18:
/* 80579A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579A1C  7C 08 03 A6 */	mtlr r0
/* 80579A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80579A24  4E 80 00 20 */	blr 
