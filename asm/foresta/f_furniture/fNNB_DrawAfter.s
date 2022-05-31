lbl_80633CE4:
/* 80633CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633CE8  7C 08 02 A6 */	mflr r0
/* 80633CEC  2C 05 00 02 */	cmpwi r5, 2
/* 80633CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633CF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80633CFC  40 82 00 4C */	bne lbl_80633D48
/* 80633D00  83 C3 00 00 */	lwz r30, 0(r3)
/* 80633D04  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80633D08  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80633D0C  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 80633D10  38 9F 00 08 */	addi r4, r31, 8
/* 80633D14  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 80633D18  90 1F 00 00 */	stw r0, 0(r31)
/* 80633D1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80633D20  4B DD 96 B5 */	bl _Matrix_to_Mtx_new
/* 80633D24  90 7F 00 04 */	stw r3, 4(r31)
/* 80633D28  3C 60 80 F6 */	lis r3, int_nog_nabe_fire_model@ha /* 0x80F5ADF8@ha */
/* 80633D2C  3C 80 DE 00 */	lis r4, 0xde00
/* 80633D30  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80633D34  38 03 AD F8 */	addi r0, r3, int_nog_nabe_fire_model@l /* 0x80F5ADF8@l */
/* 80633D38  38 65 00 08 */	addi r3, r5, 8
/* 80633D3C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80633D40  90 85 00 00 */	stw r4, 0(r5)
/* 80633D44  90 05 00 04 */	stw r0, 4(r5)
lbl_80633D48:
/* 80633D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633D4C  38 60 00 01 */	li r3, 1
/* 80633D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633D54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80633D58  7C 08 03 A6 */	mtlr r0
/* 80633D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80633D60  4E 80 00 20 */	blr 
