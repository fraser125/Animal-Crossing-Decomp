lbl_8053CDF8:
/* 8053CDF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053CDFC  7C 08 02 A6 */	mflr r0
/* 8053CE00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053CE04  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CE08  4B B5 E0 CD */	bl func_8009AED4
/* 8053CE0C  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053CE10  7C 7D 1B 78 */	mr r29, r3
/* 8053CE14  3B E4 2B 78 */	addi r31, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053CE18  38 60 00 04 */	li r3, 4
/* 8053CE1C  38 80 00 00 */	li r4, 0
/* 8053CE20  4B E5 B6 5D */	bl mDemo_Get_OrderValue
/* 8053CE24  A0 9D 08 7E */	lhz r4, 0x87e(r29)
/* 8053CE28  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 8053CE2C  88 7D 09 72 */	lbz r3, 0x972(r29)
/* 8053CE30  28 04 00 00 */	cmplwi r4, 0
/* 8053CE34  40 82 00 10 */	bne lbl_8053CE44
/* 8053CE38  38 DF 0A 7C */	addi r6, r31, 0xa7c
/* 8053CE3C  38 BF 0A D4 */	addi r5, r31, 0xad4
/* 8053CE40  48 00 00 38 */	b lbl_8053CE78
lbl_8053CE44:
/* 8053CE44  28 04 23 00 */	cmplwi r4, 0x2300
/* 8053CE48  38 00 00 00 */	li r0, 0
/* 8053CE4C  41 80 00 10 */	blt lbl_8053CE5C
/* 8053CE50  28 04 23 28 */	cmplwi r4, 0x2328
/* 8053CE54  41 81 00 08 */	bgt lbl_8053CE5C
/* 8053CE58  38 00 00 01 */	li r0, 1
lbl_8053CE5C:
/* 8053CE5C  2C 00 00 01 */	cmpwi r0, 1
/* 8053CE60  40 82 00 10 */	bne lbl_8053CE70
/* 8053CE64  38 DF 0B 2C */	addi r6, r31, 0xb2c
/* 8053CE68  38 BF 0B 84 */	addi r5, r31, 0xb84
/* 8053CE6C  48 00 00 0C */	b lbl_8053CE78
lbl_8053CE70:
/* 8053CE70  38 DF 0B DC */	addi r6, r31, 0xbdc
/* 8053CE74  38 BF 0C 34 */	addi r5, r31, 0xc34
lbl_8053CE78:
/* 8053CE78  2C 1E 00 00 */	cmpwi r30, 0
/* 8053CE7C  41 82 00 54 */	beq lbl_8053CED0
/* 8053CE80  2C 1E 00 FF */	cmpwi r30, 0xff
/* 8053CE84  38 A0 00 01 */	li r5, 1
/* 8053CE88  40 82 00 0C */	bne lbl_8053CE94
/* 8053CE8C  38 80 00 15 */	li r4, 0x15
/* 8053CE90  48 00 00 30 */	b lbl_8053CEC0
lbl_8053CE94:
/* 8053CE94  2C 1E 00 FE */	cmpwi r30, 0xfe
/* 8053CE98  40 82 00 0C */	bne lbl_8053CEA4
/* 8053CE9C  38 80 00 38 */	li r4, 0x38
/* 8053CEA0  48 00 00 20 */	b lbl_8053CEC0
lbl_8053CEA4:
/* 8053CEA4  2C 1E 00 FD */	cmpwi r30, 0xfd
/* 8053CEA8  40 82 00 0C */	bne lbl_8053CEB4
/* 8053CEAC  38 80 00 40 */	li r4, 0x40
/* 8053CEB0  48 00 00 10 */	b lbl_8053CEC0
lbl_8053CEB4:
/* 8053CEB4  57 C0 08 3C */	slwi r0, r30, 1
/* 8053CEB8  38 A0 00 00 */	li r5, 0
/* 8053CEBC  7C 86 02 AE */	lhax r4, r6, r0
lbl_8053CEC0:
/* 8053CEC0  7F A3 EB 78 */	mr r3, r29
/* 8053CEC4  4B FF E7 5D */	bl aNPC_Animation_init
/* 8053CEC8  9B DD 09 72 */	stb r30, 0x972(r29)
/* 8053CECC  48 00 00 3C */	b lbl_8053CF08
lbl_8053CED0:
/* 8053CED0  2C 03 00 00 */	cmpwi r3, 0
/* 8053CED4  41 82 00 34 */	beq lbl_8053CF08
/* 8053CED8  54 64 08 3C */	slwi r4, r3, 1
/* 8053CEDC  80 7D 07 14 */	lwz r3, 0x714(r29)
/* 8053CEE0  7C 06 22 AE */	lhax r0, r6, r4
/* 8053CEE4  7C 03 00 00 */	cmpw r3, r0
/* 8053CEE8  40 82 00 20 */	bne lbl_8053CF08
/* 8053CEEC  80 1D 01 98 */	lwz r0, 0x198(r29)
/* 8053CEF0  2C 00 00 01 */	cmpwi r0, 1
/* 8053CEF4  40 82 00 14 */	bne lbl_8053CF08
/* 8053CEF8  7C 85 22 AE */	lhax r4, r5, r4
/* 8053CEFC  7F A3 EB 78 */	mr r3, r29
/* 8053CF00  38 A0 00 00 */	li r5, 0
/* 8053CF04  4B FF E7 1D */	bl aNPC_Animation_init
lbl_8053CF08:
/* 8053CF08  38 60 00 04 */	li r3, 4
/* 8053CF0C  38 80 00 00 */	li r4, 0
/* 8053CF10  38 A0 00 00 */	li r5, 0
/* 8053CF14  4B E5 B5 25 */	bl mDemo_Set_OrderValue
/* 8053CF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CF1C  4B B5 E0 05 */	bl func_8009AF20
/* 8053CF20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053CF24  7C 08 03 A6 */	mtlr r0
/* 8053CF28  38 21 00 20 */	addi r1, r1, 0x20
/* 8053CF2C  4E 80 00 20 */	blr 
