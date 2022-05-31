lbl_804E1C6C:
/* 804E1C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1C70  7C 08 02 A6 */	mflr r0
/* 804E1C74  2C 05 00 00 */	cmpwi r5, 0
/* 804E1C78  7C 8B 23 78 */	mr r11, r4
/* 804E1C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1C84  7C 7F 1B 78 */	mr r31, r3
/* 804E1C88  41 80 00 40 */	blt lbl_804E1CC8
/* 804E1C8C  2C 05 00 06 */	cmpwi r5, 6
/* 804E1C90  40 80 00 38 */	bge lbl_804E1CC8
/* 804E1C94  3C 60 80 65 */	lis r3, proc_6284@ha /* 0x80648048@ha */
/* 804E1C98  54 A0 10 3A */	slwi r0, r5, 2
/* 804E1C9C  38 63 80 48 */	addi r3, r3, proc_6284@l /* 0x80648048@l */
/* 804E1CA0  7D 83 00 2E */	lwzx r12, r3, r0
/* 804E1CA4  28 0C 00 00 */	cmplwi r12, 0
/* 804E1CA8  41 82 00 20 */	beq lbl_804E1CC8
/* 804E1CAC  7D 03 43 78 */	mr r3, r8
/* 804E1CB0  7D 28 4B 78 */	mr r8, r9
/* 804E1CB4  7F E4 FB 78 */	mr r4, r31
/* 804E1CB8  7D 65 5B 78 */	mr r5, r11
/* 804E1CBC  7D 49 53 78 */	mr r9, r10
/* 804E1CC0  7D 89 03 A6 */	mtctr r12
/* 804E1CC4  4E 80 04 21 */	bctrl 
lbl_804E1CC8:
/* 804E1CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1CCC  38 60 00 01 */	li r3, 1
/* 804E1CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1CD4  7C 08 03 A6 */	mtlr r0
/* 804E1CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1CDC  4E 80 00 20 */	blr 
