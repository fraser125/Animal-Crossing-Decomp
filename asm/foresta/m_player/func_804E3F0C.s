lbl_804E3F0C:
/* 804E3F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3F10  7C 08 02 A6 */	mflr r0
/* 804E3F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3F1C  7D 1F 43 78 */	mr r31, r8
/* 804E3F20  93 C1 00 08 */	stw r30, 8(r1)
/* 804E3F24  7C 7E 1B 78 */	mr r30, r3
/* 804E3F28  A8 03 11 9A */	lha r0, 0x119a(r3)
/* 804E3F2C  2C 00 00 00 */	cmpwi r0, 0
/* 804E3F30  40 82 00 1C */	bne lbl_804E3F4C
/* 804E3F34  A8 1E 11 9C */	lha r0, 0x119c(r30)
/* 804E3F38  2C 00 00 00 */	cmpwi r0, 0
/* 804E3F3C  40 82 00 10 */	bne lbl_804E3F4C
/* 804E3F40  A8 1E 11 9E */	lha r0, 0x119e(r30)
/* 804E3F44  2C 00 00 00 */	cmpwi r0, 0
/* 804E3F48  41 82 00 54 */	beq lbl_804E3F9C
lbl_804E3F4C:
/* 804E3F4C  4B F2 82 89 */	bl Matrix_push
/* 804E3F50  3C 60 80 66 */	lis r3, MtxF_clear@ha /* 0x8065F8B0@ha */
/* 804E3F54  38 80 00 00 */	li r4, 0
/* 804E3F58  38 63 F8 B0 */	addi r3, r3, MtxF_clear@l /* 0x8065F8B0@l */
/* 804E3F5C  4B F2 83 3D */	bl Matrix_mult
/* 804E3F60  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804E3F64  7F E4 FB 78 */	mr r4, r31
/* 804E3F68  38 63 F0 50 */	addi r3, r3, data_8065F050@l /* 0x8065F050@l */
/* 804E3F6C  4B F2 8C E5 */	bl Matrix_softcv3_mult
/* 804E3F70  A8 7E 11 9A */	lha r3, 0x119a(r30)
/* 804E3F74  38 80 00 01 */	li r4, 1
/* 804E3F78  4B F2 85 41 */	bl Matrix_RotateX
/* 804E3F7C  A8 7E 11 9C */	lha r3, 0x119c(r30)
/* 804E3F80  38 80 00 01 */	li r4, 1
/* 804E3F84  4B F2 86 D9 */	bl Matrix_RotateY
/* 804E3F88  4B F2 83 01 */	bl get_Matrix_now
/* 804E3F8C  7F E4 FB 78 */	mr r4, r31
/* 804E3F90  38 A0 00 00 */	li r5, 0
/* 804E3F94  4B F2 9C 71 */	bl Matrix_to_rotate2_new
/* 804E3F98  4B F2 82 7D */	bl Matrix_pull
lbl_804E3F9C:
/* 804E3F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E3FA8  7C 08 03 A6 */	mtlr r0
/* 804E3FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3FB0  4E 80 00 20 */	blr 
