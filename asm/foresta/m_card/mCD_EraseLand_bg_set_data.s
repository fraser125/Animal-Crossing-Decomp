lbl_803FDFE8:
/* 803FDFE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FDFEC  7C 08 02 A6 */	mflr r0
/* 803FDFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FDFF4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FDFF8  4B C9 CE DD */	bl func_8009AED4
/* 803FDFFC  7C 7D 1B 78 */	mr r29, r3
/* 803FE000  7C 9E 23 78 */	mr r30, r4
/* 803FE004  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 803FE008  28 1F 00 00 */	cmplwi r31, 0
/* 803FE00C  41 82 00 7C */	beq lbl_803FE088
/* 803FE010  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FE014  2C 00 FF FF */	cmpwi r0, -1
/* 803FE018  41 82 00 70 */	beq lbl_803FE088
/* 803FE01C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A000@ha */
/* 803FE020  7F E3 FB 78 */	mr r3, r31
/* 803FE024  38 84 A0 00 */	addi r4, r4, 0xA000 /* 0x0000A000@l */
/* 803FE028  4B C5 F0 41 */	bl bzero
/* 803FE02C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FE030  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000A000@ha */
/* 803FE034  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FE038  7F E4 FB 78 */	mr r4, r31
/* 803FE03C  38 A5 A0 00 */	addi r5, r5, 0xA000 /* 0x0000A000@l */
/* 803FE040  4B C5 EF DD */	bl func_8005D01C
/* 803FE044  7F E3 FB 78 */	mr r3, r31
/* 803FE048  4B FA E5 DD */	bl mFRm_ClearSaveCheckData
/* 803FE04C  38 00 00 01 */	li r0, 1
/* 803FE050  38 60 00 01 */	li r3, 1
/* 803FE054  90 1D 00 04 */	stw r0, 4(r29)
/* 803FE058  4B FF C4 01 */	bl mCD_get_size
/* 803FE05C  90 7D 00 08 */	stw r3, 8(r29)
/* 803FE060  38 A0 00 16 */	li r5, 0x16
/* 803FE064  38 60 00 01 */	li r3, 1
/* 803FE068  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FE06C  1C 80 00 94 */	mulli r4, r0, 0x94
/* 803FE070  38 04 00 CC */	addi r0, r4, 0xcc
/* 803FE074  7C BD 01 2E */	stwx r5, r29, r0
/* 803FE078  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FE07C  38 04 00 01 */	addi r0, r4, 1
/* 803FE080  90 1E 00 00 */	stw r0, 0(r30)
/* 803FE084  48 00 00 08 */	b lbl_803FE08C
lbl_803FE088:
/* 803FE088  38 60 FF FF */	li r3, -1
lbl_803FE08C:
/* 803FE08C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE090  4B C9 CE 91 */	bl func_8009AF20
/* 803FE094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE098  7C 08 03 A6 */	mtlr r0
/* 803FE09C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE0A0  4E 80 00 20 */	blr 
