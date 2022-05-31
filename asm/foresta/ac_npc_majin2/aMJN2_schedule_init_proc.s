lbl_80557D3C:
/* 80557D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557D40  7C 08 02 A6 */	mflr r0
/* 80557D44  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80557D48  3C A0 80 55 */	lis r5, aMJN2_think_proc@ha /* 0x80557D08@ha */
/* 80557D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557D50  38 05 7D 08 */	addi r0, r5, aMJN2_think_proc@l /* 0x80557D08@l */
/* 80557D54  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80557D58  38 A0 00 09 */	li r5, 9
/* 80557D5C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80557D60  3C E6 00 02 */	addis r7, r6, 2
/* 80557D64  38 C0 00 00 */	li r6, 0
/* 80557D68  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80557D6C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80557D70  7D 89 03 A6 */	mtctr r12
/* 80557D74  4E 80 04 21 */	bctrl 
/* 80557D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557D7C  7C 08 03 A6 */	mtlr r0
/* 80557D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80557D84  4E 80 00 20 */	blr 
