lbl_804A0CA4:
/* 804A0CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A0CA8  7C 08 02 A6 */	mflr r0
/* 804A0CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A0CB0  38 00 00 00 */	li r0, 0
/* 804A0CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A0CB8  7C 7F 1B 78 */	mr r31, r3
/* 804A0CBC  80 63 01 74 */	lwz r3, 0x174(r3)
/* 804A0CC0  1C 63 00 58 */	mulli r3, r3, 0x58
/* 804A0CC4  90 1F 01 78 */	stw r0, 0x178(r31)
/* 804A0CC8  4B F1 B7 95 */	bl zelda_malloc
/* 804A0CCC  90 7F 01 78 */	stw r3, 0x178(r31)
/* 804A0CD0  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 804A0CD4  28 00 00 00 */	cmplwi r0, 0
/* 804A0CD8  41 82 00 0C */	beq lbl_804A0CE4
/* 804A0CDC  7F E3 FB 78 */	mr r3, r31
/* 804A0CE0  4B FF FD 55 */	bl aShopUmbrella_UmbrellaCt
lbl_804A0CE4:
/* 804A0CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A0CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A0CEC  7C 08 03 A6 */	mtlr r0
/* 804A0CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A0CF4  4E 80 00 20 */	blr 
