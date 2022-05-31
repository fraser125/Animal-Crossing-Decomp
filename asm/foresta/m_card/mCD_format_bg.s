lbl_803F8F54:
/* 803F8F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F8F58  7C 08 02 A6 */	mflr r0
/* 803F8F5C  3C A0 81 17 */	lis r5, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F8F60  7C 69 1B 78 */	mr r9, r3
/* 803F8F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F8F68  38 65 15 BC */	addi r3, r5, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F8F6C  7C 85 23 78 */	mr r5, r4
/* 803F8F70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F8F74  3B E0 00 00 */	li r31, 0
/* 803F8F78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F8F7C  7C 7E 1B 78 */	mr r30, r3
/* 803F8F80  81 03 00 18 */	lwz r8, 0x18(r3)
/* 803F8F84  2C 08 00 00 */	cmpwi r8, 0
/* 803F8F88  41 80 00 BC */	blt lbl_803F9044
/* 803F8F8C  2C 08 00 04 */	cmpwi r8, 4
/* 803F8F90  40 80 00 B4 */	bge lbl_803F9044
/* 803F8F94  3C C0 81 17 */	lis r6, work_p_1132@ha /* 0x811715F8@ha */
/* 803F8F98  3C 80 80 66 */	lis r4, fbg_proc@ha /* 0x8065E418@ha */
/* 803F8F9C  38 06 15 F8 */	addi r0, r6, work_p_1132@l /* 0x811715F8@l */
/* 803F8FA0  38 E0 00 00 */	li r7, 0
/* 803F8FA4  90 01 00 08 */	stw r0, 8(r1)
/* 803F8FA8  55 00 10 3A */	slwi r0, r8, 2
/* 803F8FAC  39 44 E4 18 */	addi r10, r4, fbg_proc@l /* 0x8065E418@l */
/* 803F8FB0  7D 24 4B 78 */	mr r4, r9
/* 803F8FB4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803F8FB8  38 C0 00 00 */	li r6, 0
/* 803F8FBC  39 00 00 00 */	li r8, 0
/* 803F8FC0  39 20 00 00 */	li r9, 0
/* 803F8FC4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803F8FC8  38 E0 00 00 */	li r7, 0
/* 803F8FCC  7D 8A 00 2E */	lwzx r12, r10, r0
/* 803F8FD0  39 40 00 00 */	li r10, 0
/* 803F8FD4  7D 89 03 A6 */	mtctr r12
/* 803F8FD8  4E 80 04 21 */	bctrl 
/* 803F8FDC  2C 03 00 01 */	cmpwi r3, 1
/* 803F8FE0  40 82 00 20 */	bne lbl_803F9000
/* 803F8FE4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803F8FE8  2C 00 00 04 */	cmpwi r0, 4
/* 803F8FEC  40 82 00 14 */	bne lbl_803F9000
/* 803F8FF0  7F C3 F3 78 */	mr r3, r30
/* 803F8FF4  4B FF EB 25 */	bl mCD_ClearCardBgInfo
/* 803F8FF8  3B E0 00 01 */	li r31, 1
/* 803F8FFC  48 00 00 18 */	b lbl_803F9014
lbl_803F9000:
/* 803F9000  2C 03 FF FF */	cmpwi r3, -1
/* 803F9004  40 82 00 10 */	bne lbl_803F9014
/* 803F9008  7F C3 F3 78 */	mr r3, r30
/* 803F900C  4B FF EB 0D */	bl mCD_ClearCardBgInfo
/* 803F9010  3B E0 FF FF */	li r31, -1
lbl_803F9014:
/* 803F9014  2C 1F 00 00 */	cmpwi r31, 0
/* 803F9018  41 82 00 54 */	beq lbl_803F906C
/* 803F901C  3C 60 81 17 */	lis r3, work_p_1132@ha /* 0x811715F8@ha */
/* 803F9020  38 63 15 F8 */	addi r3, r3, work_p_1132@l /* 0x811715F8@l */
/* 803F9024  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9028  28 03 00 00 */	cmplwi r3, 0
/* 803F902C  41 82 00 40 */	beq lbl_803F906C
/* 803F9030  4B FC 34 85 */	bl zelda_free
/* 803F9034  3C 60 81 17 */	lis r3, work_p_1132@ha /* 0x811715F8@ha */
/* 803F9038  38 00 00 00 */	li r0, 0
/* 803F903C  90 03 15 F8 */	stw r0, work_p_1132@l(r3)  /* 0x811715F8@l */
/* 803F9040  48 00 00 2C */	b lbl_803F906C
lbl_803F9044:
/* 803F9044  3C 60 81 17 */	lis r3, work_p_1132@ha /* 0x811715F8@ha */
/* 803F9048  38 63 15 F8 */	addi r3, r3, work_p_1132@l /* 0x811715F8@l */
/* 803F904C  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9050  28 03 00 00 */	cmplwi r3, 0
/* 803F9054  41 82 00 14 */	beq lbl_803F9068
/* 803F9058  4B FC 34 5D */	bl zelda_free
/* 803F905C  3C 60 81 17 */	lis r3, work_p_1132@ha /* 0x811715F8@ha */
/* 803F9060  38 00 00 00 */	li r0, 0
/* 803F9064  90 03 15 F8 */	stw r0, work_p_1132@l(r3)  /* 0x811715F8@l */
lbl_803F9068:
/* 803F9068  3B E0 FF FF */	li r31, -1
lbl_803F906C:
/* 803F906C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9070  7F E3 FB 78 */	mr r3, r31
/* 803F9074  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F9078  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F907C  7C 08 03 A6 */	mtlr r0
/* 803F9080  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9084  4E 80 00 20 */	blr 
