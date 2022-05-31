lbl_803F87E8:
/* 803F87E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F87EC  7C 08 02 A6 */	mflr r0
/* 803F87F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F87F4  39 61 00 40 */	addi r11, r1, 0x40
/* 803F87F8  4B CA 26 CD */	bl func_8009AEC4
/* 803F87FC  3D 40 81 17 */	lis r10, data_811715B8@ha /* 0x811715B8@ha */
/* 803F8800  7C 79 1B 78 */	mr r25, r3
/* 803F8804  3B EA 15 B8 */	addi r31, r10, data_811715B8@l /* 0x811715B8@l */
/* 803F8808  7C 8C 23 78 */	mr r12, r4
/* 803F880C  3B 9F 00 04 */	addi r28, r31, 4
/* 803F8810  7C BA 2B 78 */	mr r26, r5
/* 803F8814  81 7C 00 18 */	lwz r11, 0x18(r28)
/* 803F8818  7C DB 33 78 */	mr r27, r6
/* 803F881C  7C EA 3B 78 */	mr r10, r7
/* 803F8820  7D 3D 4B 78 */	mr r29, r9
/* 803F8824  2C 0B 00 00 */	cmpwi r11, 0
/* 803F8828  3B C0 00 00 */	li r30, 0
/* 803F882C  41 80 00 CC */	blt lbl_803F88F8
/* 803F8830  2C 0B 00 06 */	cmpwi r11, 6
/* 803F8834  40 80 00 C4 */	bge lbl_803F88F8
/* 803F8838  38 1F 00 34 */	addi r0, r31, 0x34
/* 803F883C  3C 60 80 66 */	lis r3, wcbg_proc@ha /* 0x8065E3EC@ha */
/* 803F8840  90 01 00 08 */	stw r0, 8(r1)
/* 803F8844  38 9F 00 38 */	addi r4, r31, 0x38
/* 803F8848  39 23 E3 EC */	addi r9, r3, wcbg_proc@l /* 0x8065E3EC@l */
/* 803F884C  38 A0 00 00 */	li r5, 0
/* 803F8850  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8854  7D 04 43 78 */	mr r4, r8
/* 803F8858  55 60 10 3A */	slwi r0, r11, 2
/* 803F885C  7D 87 63 78 */	mr r7, r12
/* 803F8860  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803F8864  7F 83 E3 78 */	mr r3, r28
/* 803F8868  7F A5 EB 78 */	mr r5, r29
/* 803F886C  7F 26 CB 78 */	mr r6, r25
/* 803F8870  7D 89 00 2E */	lwzx r12, r9, r0
/* 803F8874  7F 48 D3 78 */	mr r8, r26
/* 803F8878  7F 69 DB 78 */	mr r9, r27
/* 803F887C  7D 89 03 A6 */	mtctr r12
/* 803F8880  4E 80 04 21 */	bctrl 
/* 803F8884  2C 03 00 01 */	cmpwi r3, 1
/* 803F8888  40 82 00 20 */	bne lbl_803F88A8
/* 803F888C  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 803F8890  2C 00 00 06 */	cmpwi r0, 6
/* 803F8894  40 82 00 14 */	bne lbl_803F88A8
/* 803F8898  7F 83 E3 78 */	mr r3, r28
/* 803F889C  4B FF F2 7D */	bl mCD_ClearCardBgInfo
/* 803F88A0  3B C0 00 01 */	li r30, 1
/* 803F88A4  48 00 00 18 */	b lbl_803F88BC
lbl_803F88A8:
/* 803F88A8  2C 03 FF FF */	cmpwi r3, -1
/* 803F88AC  40 82 00 10 */	bne lbl_803F88BC
/* 803F88B0  7F 83 E3 78 */	mr r3, r28
/* 803F88B4  4B FF F2 65 */	bl mCD_ClearCardBgInfo
/* 803F88B8  3B C0 FF FF */	li r30, -1
lbl_803F88BC:
/* 803F88BC  2C 1E 00 00 */	cmpwi r30, 0
/* 803F88C0  41 82 00 7C */	beq lbl_803F893C
/* 803F88C4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803F88C8  28 03 00 00 */	cmplwi r3, 0
/* 803F88CC  41 82 00 10 */	beq lbl_803F88DC
/* 803F88D0  4B FC 3B E5 */	bl zelda_free
/* 803F88D4  38 00 00 00 */	li r0, 0
/* 803F88D8  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_803F88DC:
/* 803F88DC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 803F88E0  28 03 00 00 */	cmplwi r3, 0
/* 803F88E4  41 82 00 58 */	beq lbl_803F893C
/* 803F88E8  4B FC 3B CD */	bl zelda_free
/* 803F88EC  38 00 00 00 */	li r0, 0
/* 803F88F0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 803F88F4  48 00 00 48 */	b lbl_803F893C
lbl_803F88F8:
/* 803F88F8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803F88FC  28 03 00 00 */	cmplwi r3, 0
/* 803F8900  41 82 00 10 */	beq lbl_803F8910
/* 803F8904  4B FC 3B B1 */	bl zelda_free
/* 803F8908  38 00 00 00 */	li r0, 0
/* 803F890C  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_803F8910:
/* 803F8910  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 803F8914  28 03 00 00 */	cmplwi r3, 0
/* 803F8918  41 82 00 10 */	beq lbl_803F8928
/* 803F891C  4B FC 3B 99 */	bl zelda_free
/* 803F8920  38 00 00 00 */	li r0, 0
/* 803F8924  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_803F8928:
/* 803F8928  7F 83 E3 78 */	mr r3, r28
/* 803F892C  4B FF F1 ED */	bl mCD_ClearCardBgInfo
/* 803F8930  38 00 00 00 */	li r0, 0
/* 803F8934  3B C0 FF FF */	li r30, -1
/* 803F8938  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_803F893C:
/* 803F893C  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F8940  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F8944  2C 00 00 02 */	cmpwi r0, 2
/* 803F8948  41 80 00 38 */	blt lbl_803F8980
/* 803F894C  2C 1E FF FF */	cmpwi r30, -1
/* 803F8950  40 82 00 18 */	bne lbl_803F8968
/* 803F8954  38 60 00 02 */	li r3, 2
/* 803F8958  4B FF EC E9 */	bl mCD_OnErrInfo
/* 803F895C  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F8960  4B FF ED 31 */	bl mCD_SetErrResult
/* 803F8964  48 00 00 1C */	b lbl_803F8980
lbl_803F8968:
/* 803F8968  2C 1E 00 01 */	cmpwi r30, 1
/* 803F896C  40 82 00 14 */	bne lbl_803F8980
/* 803F8970  38 60 00 02 */	li r3, 2
/* 803F8974  4B FF EC F5 */	bl mCD_OffErrInfo
/* 803F8978  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F897C  4B FF ED 15 */	bl mCD_SetErrResult
lbl_803F8980:
/* 803F8980  7F C3 F3 78 */	mr r3, r30
/* 803F8984  39 61 00 40 */	addi r11, r1, 0x40
/* 803F8988  4B CA 25 89 */	bl func_8009AF10
/* 803F898C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F8990  7C 08 03 A6 */	mtlr r0
/* 803F8994  38 21 00 40 */	addi r1, r1, 0x40
/* 803F8998  4E 80 00 20 */	blr 
