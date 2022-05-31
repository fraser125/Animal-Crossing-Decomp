lbl_805911DC:
/* 805911DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805911E0  7C 08 02 A6 */	mflr r0
/* 805911E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805911E8  4B FF FF E1 */	bl func_805911C8
/* 805911EC  3C 80 80 6C */	lis r4, first_angle@ha /* 0x806C28A4@ha */
/* 805911F0  54 60 08 3C */	slwi r0, r3, 1
/* 805911F4  38 64 28 A4 */	addi r3, r4, first_angle@l /* 0x806C28A4@l */
/* 805911F8  7C 63 02 AE */	lhax r3, r3, r0
/* 805911FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591200  7C 08 03 A6 */	mtlr r0
/* 80591204  38 21 00 10 */	addi r1, r1, 0x10
/* 80591208  4E 80 00 20 */	blr 
