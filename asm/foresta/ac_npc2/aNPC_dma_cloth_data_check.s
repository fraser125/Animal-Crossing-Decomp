lbl_8053AF9C:
/* 8053AF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AFA0  7C 08 02 A6 */	mflr r0
/* 8053AFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AFA8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8053AFAC  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8053AFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AFB4  7C BF 2B 78 */	mr r31, r5
/* 8053AFB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8053AFBC  7C 7E 1B 78 */	mr r30, r3
/* 8053AFC0  40 82 00 0C */	bne lbl_8053AFCC
/* 8053AFC4  38 60 00 0B */	li r3, 0xb
/* 8053AFC8  48 00 00 30 */	b lbl_8053AFF8
lbl_8053AFCC:
/* 8053AFCC  4B FF FF 99 */	bl aNPC_get_same_cloth_data_area
/* 8053AFD0  2C 03 FF FF */	cmpwi r3, -1
/* 8053AFD4  41 82 00 20 */	beq lbl_8053AFF4
/* 8053AFD8  1C 83 00 C0 */	mulli r4, r3, 0xc0
/* 8053AFDC  38 00 00 00 */	li r0, 0
/* 8053AFE0  7C BE 22 14 */	add r5, r30, r4
/* 8053AFE4  98 05 00 01 */	stb r0, 1(r5)
/* 8053AFE8  88 85 00 06 */	lbz r4, 6(r5)
/* 8053AFEC  38 04 00 01 */	addi r0, r4, 1
/* 8053AFF0  98 05 00 06 */	stb r0, 6(r5)
lbl_8053AFF4:
/* 8053AFF4  38 63 00 01 */	addi r3, r3, 1
lbl_8053AFF8:
/* 8053AFF8  2C 03 00 0B */	cmpwi r3, 0xb
/* 8053AFFC  40 82 00 14 */	bne lbl_8053B010
/* 8053B000  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 8053B004  28 00 00 00 */	cmplwi r0, 0
/* 8053B008  40 82 00 08 */	bne lbl_8053B010
/* 8053B00C  38 60 FF FF */	li r3, -1
lbl_8053B010:
/* 8053B010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053B014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053B018  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053B01C  7C 08 03 A6 */	mtlr r0
/* 8053B020  38 21 00 10 */	addi r1, r1, 0x10
/* 8053B024  4E 80 00 20 */	blr 
