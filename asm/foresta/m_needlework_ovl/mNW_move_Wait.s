lbl_805E9E20:
/* 805E9E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E9E24  7C 08 02 A6 */	mflr r0
/* 805E9E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E9E30  7C 9F 23 78 */	mr r31, r4
/* 805E9E34  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 805E9E38  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805E9E3C  1C 85 00 48 */	mulli r4, r5, 0x48
/* 805E9E40  38 84 00 54 */	addi r4, r4, 0x54
/* 805E9E44  7C 86 22 14 */	add r4, r6, r4
/* 805E9E48  80 04 00 04 */	lwz r0, 4(r4)
/* 805E9E4C  2C 00 00 00 */	cmpwi r0, 0
/* 805E9E50  40 82 00 7C */	bne lbl_805E9ECC
/* 805E9E54  80 04 00 30 */	lwz r0, 0x30(r4)
/* 805E9E58  2C 00 00 04 */	cmpwi r0, 4
/* 805E9E5C  40 82 00 70 */	bne lbl_805E9ECC
/* 805E9E60  2C 05 00 19 */	cmpwi r5, 0x19
/* 805E9E64  41 82 00 50 */	beq lbl_805E9EB4
/* 805E9E68  40 80 00 10 */	bge lbl_805E9E78
/* 805E9E6C  2C 05 00 18 */	cmpwi r5, 0x18
/* 805E9E70  40 80 00 14 */	bge lbl_805E9E84
/* 805E9E74  48 00 00 40 */	b lbl_805E9EB4
lbl_805E9E78:
/* 805E9E78  2C 05 00 1B */	cmpwi r5, 0x1b
/* 805E9E7C  40 80 00 38 */	bge lbl_805E9EB4
/* 805E9E80  48 00 00 1C */	b lbl_805E9E9C
lbl_805E9E84:
/* 805E9E84  81 86 09 4C */	lwz r12, 0x94c(r6)
/* 805E9E88  7F E3 FB 78 */	mr r3, r31
/* 805E9E8C  38 80 00 02 */	li r4, 2
/* 805E9E90  7D 89 03 A6 */	mtctr r12
/* 805E9E94  4E 80 04 21 */	bctrl 
/* 805E9E98  48 00 00 34 */	b lbl_805E9ECC
lbl_805E9E9C:
/* 805E9E9C  81 86 09 4C */	lwz r12, 0x94c(r6)
/* 805E9EA0  7F E3 FB 78 */	mr r3, r31
/* 805E9EA4  38 80 00 00 */	li r4, 0
/* 805E9EA8  7D 89 03 A6 */	mtctr r12
/* 805E9EAC  4E 80 04 21 */	bctrl 
/* 805E9EB0  48 00 00 1C */	b lbl_805E9ECC
lbl_805E9EB4:
/* 805E9EB4  80 86 09 7C */	lwz r4, 0x97c(r6)
/* 805E9EB8  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805E9EBC  7D 89 03 A6 */	mtctr r12
/* 805E9EC0  4E 80 04 21 */	bctrl 
/* 805E9EC4  38 00 00 01 */	li r0, 1
/* 805E9EC8  90 1F 00 04 */	stw r0, 4(r31)
lbl_805E9ECC:
/* 805E9ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E9ED4  7C 08 03 A6 */	mtlr r0
/* 805E9ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9EDC  4E 80 00 20 */	blr 
