lbl_803F9BF4:
/* 803F9BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9BF8  7C 08 02 A6 */	mflr r0
/* 803F9BFC  3C C0 81 17 */	lis r6, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F9C00  7C 67 1B 78 */	mr r7, r3
/* 803F9C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9C08  38 66 15 BC */	addi r3, r6, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F9C0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F9C10  3B E0 00 00 */	li r31, 0
/* 803F9C14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F9C18  7C 7E 1B 78 */	mr r30, r3
/* 803F9C1C  81 43 00 18 */	lwz r10, 0x18(r3)
/* 803F9C20  2C 0A 00 00 */	cmpwi r10, 0
/* 803F9C24  41 80 00 B4 */	blt lbl_803F9CD8
/* 803F9C28  2C 0A 00 05 */	cmpwi r10, 5
/* 803F9C2C  40 80 00 AC */	bge lbl_803F9CD8
/* 803F9C30  3D 00 81 17 */	lis r8, work_p_1402@ha /* 0x8117160C@ha */
/* 803F9C34  3C C0 80 66 */	lis r6, ebg_proc@ha /* 0x8065E470@ha */
/* 803F9C38  38 08 16 0C */	addi r0, r8, work_p_1402@l /* 0x8117160C@l */
/* 803F9C3C  39 20 00 00 */	li r9, 0
/* 803F9C40  90 01 00 08 */	stw r0, 8(r1)
/* 803F9C44  55 40 10 3A */	slwi r0, r10, 2
/* 803F9C48  39 66 E4 70 */	addi r11, r6, ebg_proc@l /* 0x8065E470@l */
/* 803F9C4C  38 C0 00 00 */	li r6, 0
/* 803F9C50  91 21 00 0C */	stw r9, 0xc(r1)
/* 803F9C54  39 00 00 00 */	li r8, 0
/* 803F9C58  39 40 00 00 */	li r10, 0
/* 803F9C5C  91 21 00 10 */	stw r9, 0x10(r1)
/* 803F9C60  39 20 00 00 */	li r9, 0
/* 803F9C64  7D 8B 00 2E */	lwzx r12, r11, r0
/* 803F9C68  7D 89 03 A6 */	mtctr r12
/* 803F9C6C  4E 80 04 21 */	bctrl 
/* 803F9C70  2C 03 00 01 */	cmpwi r3, 1
/* 803F9C74  40 82 00 20 */	bne lbl_803F9C94
/* 803F9C78  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803F9C7C  2C 00 00 05 */	cmpwi r0, 5
/* 803F9C80  40 82 00 14 */	bne lbl_803F9C94
/* 803F9C84  7F C3 F3 78 */	mr r3, r30
/* 803F9C88  4B FF DE 91 */	bl mCD_ClearCardBgInfo
/* 803F9C8C  3B E0 00 01 */	li r31, 1
/* 803F9C90  48 00 00 18 */	b lbl_803F9CA8
lbl_803F9C94:
/* 803F9C94  2C 03 FF FF */	cmpwi r3, -1
/* 803F9C98  40 82 00 10 */	bne lbl_803F9CA8
/* 803F9C9C  7F C3 F3 78 */	mr r3, r30
/* 803F9CA0  4B FF DE 79 */	bl mCD_ClearCardBgInfo
/* 803F9CA4  3B E0 FF FF */	li r31, -1
lbl_803F9CA8:
/* 803F9CA8  2C 1F 00 00 */	cmpwi r31, 0
/* 803F9CAC  41 82 00 54 */	beq lbl_803F9D00
/* 803F9CB0  3C 60 81 17 */	lis r3, work_p_1402@ha /* 0x8117160C@ha */
/* 803F9CB4  38 63 16 0C */	addi r3, r3, work_p_1402@l /* 0x8117160C@l */
/* 803F9CB8  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9CBC  28 03 00 00 */	cmplwi r3, 0
/* 803F9CC0  41 82 00 40 */	beq lbl_803F9D00
/* 803F9CC4  4B FC 27 F1 */	bl zelda_free
/* 803F9CC8  3C 60 81 17 */	lis r3, work_p_1402@ha /* 0x8117160C@ha */
/* 803F9CCC  38 00 00 00 */	li r0, 0
/* 803F9CD0  90 03 16 0C */	stw r0, work_p_1402@l(r3)  /* 0x8117160C@l */
/* 803F9CD4  48 00 00 2C */	b lbl_803F9D00
lbl_803F9CD8:
/* 803F9CD8  3C 60 81 17 */	lis r3, work_p_1402@ha /* 0x8117160C@ha */
/* 803F9CDC  38 63 16 0C */	addi r3, r3, work_p_1402@l /* 0x8117160C@l */
/* 803F9CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9CE4  28 03 00 00 */	cmplwi r3, 0
/* 803F9CE8  41 82 00 14 */	beq lbl_803F9CFC
/* 803F9CEC  4B FC 27 C9 */	bl zelda_free
/* 803F9CF0  3C 60 81 17 */	lis r3, work_p_1402@ha /* 0x8117160C@ha */
/* 803F9CF4  38 00 00 00 */	li r0, 0
/* 803F9CF8  90 03 16 0C */	stw r0, work_p_1402@l(r3)  /* 0x8117160C@l */
lbl_803F9CFC:
/* 803F9CFC  3B E0 FF FF */	li r31, -1
lbl_803F9D00:
/* 803F9D00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9D04  7F E3 FB 78 */	mr r3, r31
/* 803F9D08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F9D0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F9D10  7C 08 03 A6 */	mtlr r0
/* 803F9D14  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9D18  4E 80 00 20 */	blr 
