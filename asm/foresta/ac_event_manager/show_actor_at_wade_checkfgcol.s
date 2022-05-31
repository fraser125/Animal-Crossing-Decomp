lbl_8041CCE4:
/* 8041CCE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041CCE8  7C 08 02 A6 */	mflr r0
/* 8041CCEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041CCF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8041CCF4  4B C7 E1 E1 */	bl func_8009AED4
/* 8041CCF8  7C 7D 1B 78 */	mr r29, r3
/* 8041CCFC  7C 9E 23 78 */	mr r30, r4
/* 8041CD00  7C BF 2B 78 */	mr r31, r5
/* 8041CD04  4B F8 7F C9 */	bl mFI_GetFieldId
/* 8041CD08  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041CD0C  40 82 01 70 */	bne lbl_8041CE7C
/* 8041CD10  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041CD14  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8041CD18  4B F8 15 95 */	bl mEv_get_common_place
/* 8041CD1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041CD20  41 82 01 5C */	beq lbl_8041CE7C
/* 8041CD24  80 7D 02 10 */	lwz r3, 0x210(r29)
/* 8041CD28  80 1F 00 04 */	lwz r0, 4(r31)
/* 8041CD2C  7C 03 00 00 */	cmpw r3, r0
/* 8041CD30  40 82 00 1C */	bne lbl_8041CD4C
/* 8041CD34  80 7D 02 0C */	lwz r3, 0x20c(r29)
/* 8041CD38  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CD3C  7C 03 00 00 */	cmpw r3, r0
/* 8041CD40  40 82 00 0C */	bne lbl_8041CD4C
/* 8041CD44  38 60 FF FF */	li r3, -1
/* 8041CD48  48 00 01 38 */	b lbl_8041CE80
lbl_8041CD4C:
/* 8041CD4C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8041CD50  38 9E 00 18 */	addi r4, r30, 0x18
/* 8041CD54  4B FF C7 65 */	bl func_804194B8
/* 8041CD58  2C 03 00 00 */	cmpwi r3, 0
/* 8041CD5C  40 82 00 0C */	bne lbl_8041CD68
/* 8041CD60  38 60 FF FF */	li r3, -1
/* 8041CD64  48 00 01 1C */	b lbl_8041CE80
lbl_8041CD68:
/* 8041CD68  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8041CD6C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8041CD70  7C 03 00 00 */	cmpw r3, r0
/* 8041CD74  40 82 00 14 */	bne lbl_8041CD88
/* 8041CD78  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8041CD7C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CD80  7C 03 00 00 */	cmpw r3, r0
/* 8041CD84  41 82 00 0C */	beq lbl_8041CD90
lbl_8041CD88:
/* 8041CD88  38 60 FF FF */	li r3, -1
/* 8041CD8C  48 00 00 F4 */	b lbl_8041CE80
lbl_8041CD90:
/* 8041CD90  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8041CD94  38 61 00 14 */	addi r3, r1, 0x14
/* 8041CD98  38 81 00 10 */	addi r4, r1, 0x10
/* 8041CD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041CDA0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8041CDA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041CDA8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8041CDAC  80 DF 00 08 */	lwz r6, 8(r31)
/* 8041CDB0  80 FF 00 04 */	lwz r7, 4(r31)
/* 8041CDB4  81 1F 00 00 */	lwz r8, 0(r31)
/* 8041CDB8  4B FB 64 A9 */	bl mNpc_GetMakeUtNuminBlock33
/* 8041CDBC  2C 03 00 01 */	cmpwi r3, 1
/* 8041CDC0  40 82 00 18 */	bne lbl_8041CDD8
/* 8041CDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041CDC8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8041CDCC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8041CDD0  90 1F 00 08 */	stw r0, 8(r31)
/* 8041CDD4  48 00 00 3C */	b lbl_8041CE10
lbl_8041CDD8:
/* 8041CDD8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8041CDDC  38 61 00 14 */	addi r3, r1, 0x14
/* 8041CDE0  80 DF 00 00 */	lwz r6, 0(r31)
/* 8041CDE4  38 81 00 10 */	addi r4, r1, 0x10
/* 8041CDE8  4B FB 63 AD */	bl mNpc_GetMakeUtNuminBlock
/* 8041CDEC  2C 03 00 01 */	cmpwi r3, 1
/* 8041CDF0  40 82 00 18 */	bne lbl_8041CE08
/* 8041CDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041CDF8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8041CDFC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8041CE00  90 1F 00 08 */	stw r0, 8(r31)
/* 8041CE04  48 00 00 0C */	b lbl_8041CE10
lbl_8041CE08:
/* 8041CE08  38 60 FF FF */	li r3, -1
/* 8041CE0C  48 00 00 74 */	b lbl_8041CE80
lbl_8041CE10:
/* 8041CE10  7F E3 FB 78 */	mr r3, r31
/* 8041CE14  4B FF E3 8D */	bl be_flat_unit
/* 8041CE18  80 1F 00 08 */	lwz r0, 8(r31)
/* 8041CE1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041CE20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041CE24  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041CE28  90 01 00 08 */	stw r0, 8(r1)
/* 8041CE2C  3C 63 00 02 */	addis r3, r3, 2
/* 8041CE30  38 E4 52 F0 */	addi r7, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041CE34  38 A0 FF FF */	li r5, -1
/* 8041CE38  80 83 60 4C */	lwz r4, 0x604c(r3)
/* 8041CE3C  38 C0 FF FF */	li r6, -1
/* 8041CE40  80 67 00 00 */	lwz r3, 0(r7)
/* 8041CE44  38 E0 FF FF */	li r7, -1
/* 8041CE48  81 84 00 00 */	lwz r12, 0(r4)
/* 8041CE4C  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 8041CE50  81 1F 00 04 */	lwz r8, 4(r31)
/* 8041CE54  81 3F 00 00 */	lwz r9, 0(r31)
/* 8041CE58  81 5F 00 0C */	lwz r10, 0xc(r31)
/* 8041CE5C  7D 89 03 A6 */	mtctr r12
/* 8041CE60  4E 80 04 21 */	bctrl 
/* 8041CE64  2C 03 00 00 */	cmpwi r3, 0
/* 8041CE68  40 82 00 0C */	bne lbl_8041CE74
/* 8041CE6C  38 60 00 00 */	li r3, 0
/* 8041CE70  48 00 00 10 */	b lbl_8041CE80
lbl_8041CE74:
/* 8041CE74  7F E3 FB 78 */	mr r3, r31
/* 8041CE78  48 00 00 08 */	b lbl_8041CE80
lbl_8041CE7C:
/* 8041CE7C  38 60 FF FF */	li r3, -1
lbl_8041CE80:
/* 8041CE80  39 61 00 30 */	addi r11, r1, 0x30
/* 8041CE84  4B C7 E0 9D */	bl func_8009AF20
/* 8041CE88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041CE8C  7C 08 03 A6 */	mtlr r0
/* 8041CE90  38 21 00 30 */	addi r1, r1, 0x30
/* 8041CE94  4E 80 00 20 */	blr 
