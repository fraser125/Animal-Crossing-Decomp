lbl_80520B84:
/* 80520B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520B88  7C 08 02 A6 */	mflr r0
/* 80520B8C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80520B90  3C A0 80 52 */	lis r5, aEGH_think_proc@ha /* 0x80520B44@ha */
/* 80520B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520B98  38 05 0B 44 */	addi r0, r5, aEGH_think_proc@l /* 0x80520B44@l */
/* 80520B9C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80520BA0  38 A0 00 09 */	li r5, 9
/* 80520BA4  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80520BA8  3C E6 00 02 */	addis r7, r6, 2
/* 80520BAC  38 C0 00 00 */	li r6, 0
/* 80520BB0  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80520BB4  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80520BB8  7D 89 03 A6 */	mtctr r12
/* 80520BBC  4E 80 04 21 */	bctrl 
/* 80520BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520BC4  7C 08 03 A6 */	mtlr r0
/* 80520BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80520BCC  4E 80 00 20 */	blr 
