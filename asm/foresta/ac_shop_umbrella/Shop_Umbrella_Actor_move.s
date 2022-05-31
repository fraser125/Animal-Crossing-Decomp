lbl_804A1098:
/* 804A1098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A109C  7C 08 02 A6 */	mflr r0
/* 804A10A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A10A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A10A8  4B BF 9E 29 */	bl func_8009AED0
/* 804A10AC  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 804A10B0  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 804A10B4  28 1D 00 00 */	cmplwi r29, 0
/* 804A10B8  41 82 00 4C */	beq lbl_804A1104
/* 804A10BC  3C 60 80 69 */	lis r3, proc_table@ha /* 0x8068E774@ha */
/* 804A10C0  3B 80 00 00 */	li r28, 0
/* 804A10C4  3B E3 E7 74 */	addi r31, r3, proc_table@l /* 0x8068E774@l */
/* 804A10C8  48 00 00 34 */	b lbl_804A10FC
lbl_804A10CC:
/* 804A10CC  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 804A10D0  7C 60 07 35 */	extsh. r0, r3
/* 804A10D4  41 80 00 20 */	blt lbl_804A10F4
/* 804A10D8  2C 03 00 03 */	cmpwi r3, 3
/* 804A10DC  40 80 00 18 */	bge lbl_804A10F4
/* 804A10E0  54 60 10 3A */	slwi r0, r3, 2
/* 804A10E4  7F A3 EB 78 */	mr r3, r29
/* 804A10E8  7D 9F 00 2E */	lwzx r12, r31, r0
/* 804A10EC  7D 89 03 A6 */	mtctr r12
/* 804A10F0  4E 80 04 21 */	bctrl 
lbl_804A10F4:
/* 804A10F4  3B BD 00 58 */	addi r29, r29, 0x58
/* 804A10F8  3B 9C 00 01 */	addi r28, r28, 1
lbl_804A10FC:
/* 804A10FC  7C 1C F0 00 */	cmpw r28, r30
/* 804A1100  41 80 FF CC */	blt lbl_804A10CC
lbl_804A1104:
/* 804A1104  39 61 00 20 */	addi r11, r1, 0x20
/* 804A1108  4B BF 9E 15 */	bl func_8009AF1C
/* 804A110C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A1110  7C 08 03 A6 */	mtlr r0
/* 804A1114  38 21 00 20 */	addi r1, r1, 0x20
/* 804A1118  4E 80 00 20 */	blr 
