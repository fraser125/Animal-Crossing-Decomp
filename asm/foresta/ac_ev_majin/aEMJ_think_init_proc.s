lbl_80592CC4:
/* 80592CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80592CC8  7C 08 02 A6 */	mflr r0
/* 80592CCC  3C A0 80 59 */	lis r5, aEMJ_act_proc@ha /* 0x80592BE0@ha */
/* 80592CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80592CD4  38 05 2B E0 */	addi r0, r5, aEMJ_act_proc@l /* 0x80592BE0@l */
/* 80592CD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80592CDC  7C 7F 1B 78 */	mr r31, r3
/* 80592CE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80592CE4  7C 9E 23 78 */	mr r30, r4
/* 80592CE8  90 03 08 04 */	stw r0, 0x804(r3)
/* 80592CEC  4B FF FE CD */	bl func_80592BB8
/* 80592CF0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80592CF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80592CF8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80592CFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80592D00  3C 63 00 02 */	addis r3, r3, 2
/* 80592D04  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80592D08  90 81 00 08 */	stw r4, 8(r1)
/* 80592D0C  7F C7 F3 78 */	mr r7, r30
/* 80592D10  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 80592D14  38 81 00 08 */	addi r4, r1, 8
/* 80592D18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80592D1C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80592D20  38 60 00 5D */	li r3, 0x5d
/* 80592D24  38 A0 00 03 */	li r5, 3
/* 80592D28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80592D2C  39 20 00 00 */	li r9, 0
/* 80592D30  39 40 00 00 */	li r10, 0
/* 80592D34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80592D38  81 86 00 00 */	lwz r12, 0(r6)
/* 80592D3C  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 80592D40  7D 89 03 A6 */	mtctr r12
/* 80592D44  4E 80 04 21 */	bctrl 
/* 80592D48  7F E3 FB 78 */	mr r3, r31
/* 80592D4C  38 80 00 00 */	li r4, 0
/* 80592D50  48 00 00 1D */	bl aEMJ_setup_think_proc
/* 80592D54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80592D58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80592D5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80592D60  7C 08 03 A6 */	mtlr r0
/* 80592D64  38 21 00 20 */	addi r1, r1, 0x20
/* 80592D68  4E 80 00 20 */	blr 
