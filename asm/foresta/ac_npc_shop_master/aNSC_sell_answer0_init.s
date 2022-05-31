lbl_8057BF7C:
/* 8057BF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF80  7C 08 02 A6 */	mflr r0
/* 8057BF84  38 A0 00 00 */	li r5, 0
/* 8057BF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BF90  7C 7F 1B 78 */	mr r31, r3
/* 8057BF94  38 60 00 04 */	li r3, 4
/* 8057BF98  93 C1 00 08 */	stw r30, 8(r1)
/* 8057BF9C  7C 9E 23 78 */	mr r30, r4
/* 8057BFA0  38 80 00 09 */	li r4, 9
/* 8057BFA4  4B E1 C4 95 */	bl mDemo_Set_OrderValue
/* 8057BFA8  88 1F 09 B8 */	lbz r0, 0x9b8(r31)
/* 8057BFAC  28 00 00 01 */	cmplwi r0, 1
/* 8057BFB0  40 82 00 CC */	bne lbl_8057C07C
/* 8057BFB4  A0 1F 09 B4 */	lhz r0, 0x9b4(r31)
/* 8057BFB8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8057BFBC  2C 00 00 05 */	cmpwi r0, 5
/* 8057BFC0  41 82 00 BC */	beq lbl_8057C07C
/* 8057BFC4  40 80 00 10 */	bge lbl_8057BFD4
/* 8057BFC8  2C 00 00 04 */	cmpwi r0, 4
/* 8057BFCC  40 80 00 48 */	bge lbl_8057C014
/* 8057BFD0  48 00 00 AC */	b lbl_8057C07C
lbl_8057BFD4:
/* 8057BFD4  2C 00 00 08 */	cmpwi r0, 8
/* 8057BFD8  40 80 00 A4 */	bge lbl_8057C07C
/* 8057BFDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057BFE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057BFE4  3C 63 00 02 */	addis r3, r3, 2
/* 8057BFE8  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 8057BFEC  28 03 00 00 */	cmplwi r3, 0
/* 8057BFF0  41 82 00 8C */	beq lbl_8057C07C
/* 8057BFF4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8057BFF8  7D 89 03 A6 */	mtctr r12
/* 8057BFFC  4E 80 04 21 */	bctrl 
/* 8057C000  7F C3 F3 78 */	mr r3, r30
/* 8057C004  4B E0 63 99 */	bl Camera2_Inter_set_reverse_mode
/* 8057C008  38 00 00 00 */	li r0, 0
/* 8057C00C  98 1F 09 B8 */	stb r0, 0x9b8(r31)
/* 8057C010  48 00 00 6C */	b lbl_8057C07C
lbl_8057C014:
/* 8057C014  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 8057C018  4B FF BC F9 */	bl aNSC_money_check
/* 8057C01C  2C 03 00 00 */	cmpwi r3, 0
/* 8057C020  41 82 00 30 */	beq lbl_8057C050
/* 8057C024  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057C028  38 80 00 00 */	li r4, 0
/* 8057C02C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057C030  3C 63 00 02 */	addis r3, r3, 2
/* 8057C034  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057C038  4B E6 49 59 */	bl mPr_GetPossessionItemSum
/* 8057C03C  28 03 00 00 */	cmplwi r3, 0
/* 8057C040  41 82 00 10 */	beq lbl_8057C050
/* 8057C044  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8057C048  2C 00 00 21 */	cmpwi r0, 0x21
/* 8057C04C  40 82 00 28 */	bne lbl_8057C074
lbl_8057C050:
/* 8057C050  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057C054  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 8057C058  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057C05C  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 8057C060  3C A5 00 02 */	addis r5, r5, 2
/* 8057C064  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8057C068  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8057C06C  7D 89 03 A6 */	mtctr r12
/* 8057C070  4E 80 04 21 */	bctrl 
lbl_8057C074:
/* 8057C074  38 00 00 00 */	li r0, 0
/* 8057C078  98 1F 09 B8 */	stb r0, 0x9b8(r31)
lbl_8057C07C:
/* 8057C07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C084  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057C088  7C 08 03 A6 */	mtlr r0
/* 8057C08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C090  4E 80 00 20 */	blr 
