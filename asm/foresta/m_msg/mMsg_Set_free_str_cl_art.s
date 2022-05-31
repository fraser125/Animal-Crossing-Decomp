lbl_803BFD54:
/* 803BFD54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFD58  7C 08 02 A6 */	mflr r0
/* 803BFD5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFD60  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFD64  4B CD B1 6D */	bl func_8009AED0
/* 803BFD68  7C 7C 1B 78 */	mr r28, r3
/* 803BFD6C  7C 9D 23 78 */	mr r29, r4
/* 803BFD70  7C FE 3B 78 */	mr r30, r7
/* 803BFD74  7D 1F 43 78 */	mr r31, r8
/* 803BFD78  4B FF FE DD */	bl mMsg_Set_free_str
/* 803BFD7C  2C 1E 00 00 */	cmpwi r30, 0
/* 803BFD80  41 82 00 30 */	beq lbl_803BFDB0
/* 803BFD84  2C 1D 00 01 */	cmpwi r29, 1
/* 803BFD88  40 82 00 0C */	bne lbl_803BFD94
/* 803BFD8C  9B DC 04 00 */	stb r30, 0x400(r28)
/* 803BFD90  48 00 00 20 */	b lbl_803BFDB0
lbl_803BFD94:
/* 803BFD94  2C 1D 00 02 */	cmpwi r29, 2
/* 803BFD98  40 82 00 0C */	bne lbl_803BFDA4
/* 803BFD9C  9B DC 04 01 */	stb r30, 0x401(r28)
/* 803BFDA0  48 00 00 10 */	b lbl_803BFDB0
lbl_803BFDA4:
/* 803BFDA4  2C 1D 00 05 */	cmpwi r29, 5
/* 803BFDA8  40 82 00 08 */	bne lbl_803BFDB0
/* 803BFDAC  9B DC 04 02 */	stb r30, 0x402(r28)
lbl_803BFDB0:
/* 803BFDB0  57 A0 10 3A */	slwi r0, r29, 2
/* 803BFDB4  7C 7C 02 14 */	add r3, r28, r0
/* 803BFDB8  93 E3 01 78 */	stw r31, 0x178(r3)
/* 803BFDBC  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFDC0  4B CD B1 5D */	bl func_8009AF1C
/* 803BFDC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFDC8  7C 08 03 A6 */	mtlr r0
/* 803BFDCC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFDD0  4E 80 00 20 */	blr 
