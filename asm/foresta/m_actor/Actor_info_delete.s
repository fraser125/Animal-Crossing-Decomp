lbl_80375BAC:
/* 80375BAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80375BB0  7C 08 02 A6 */	mflr r0
/* 80375BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80375BB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80375BBC  4B D2 53 11 */	bl func_8009AECC
/* 80375BC0  7C 9C 23 78 */	mr r28, r4
/* 80375BC4  7C BD 2B 78 */	mr r29, r5
/* 80375BC8  A3 E4 00 06 */	lhz r31, 6(r4)
/* 80375BCC  7C 7B 1B 78 */	mr r27, r3
/* 80375BD0  83 C4 01 70 */	lwz r30, 0x170(r4)
/* 80375BD4  7F 83 E3 78 */	mr r3, r28
/* 80375BD8  7F A4 EB 78 */	mr r4, r29
/* 80375BDC  4B FF FE 31 */	bl restore_fgdata_one
/* 80375BE0  7F 83 E3 78 */	mr r3, r28
/* 80375BE4  7F A4 EB 78 */	mr r4, r29
/* 80375BE8  4B FF EA 59 */	bl Actor_dt
/* 80375BEC  7F 63 DB 78 */	mr r3, r27
/* 80375BF0  7F 84 E3 78 */	mr r4, r28
/* 80375BF4  4B FF F7 5D */	bl Actor_info_part_delete
/* 80375BF8  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 80375BFC  7C 7F 1B 78 */	mr r31, r3
/* 80375C00  2C 00 00 0D */	cmpwi r0, 0xd
/* 80375C04  40 80 00 10 */	bge lbl_80375C14
/* 80375C08  2C 00 00 05 */	cmpwi r0, 5
/* 80375C0C  41 82 00 34 */	beq lbl_80375C40
/* 80375C10  48 00 00 54 */	b lbl_80375C64
lbl_80375C14:
/* 80375C14  2C 00 00 0F */	cmpwi r0, 0xf
/* 80375C18  40 80 00 4C */	bge lbl_80375C64
/* 80375C1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80375C20  7F 83 E3 78 */	mr r3, r28
/* 80375C24  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80375C28  3C 84 00 02 */	addis r4, r4, 2
/* 80375C2C  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80375C30  81 84 00 10 */	lwz r12, 0x10(r4)
/* 80375C34  7D 89 03 A6 */	mtctr r12
/* 80375C38  4E 80 04 21 */	bctrl 
/* 80375C3C  48 00 00 30 */	b lbl_80375C6C
lbl_80375C40:
/* 80375C40  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80375C44  7F 83 E3 78 */	mr r3, r28
/* 80375C48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80375C4C  3C 84 00 02 */	addis r4, r4, 2
/* 80375C50  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 80375C54  81 84 00 10 */	lwz r12, 0x10(r4)
/* 80375C58  7D 89 03 A6 */	mtctr r12
/* 80375C5C  4E 80 04 21 */	bctrl 
/* 80375C60  48 00 00 0C */	b lbl_80375C6C
lbl_80375C64:
/* 80375C64  7F 83 E3 78 */	mr r3, r28
/* 80375C68  48 04 68 4D */	bl zelda_free
lbl_80375C6C:
/* 80375C6C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80375C70  28 00 00 00 */	cmplwi r0, 0
/* 80375C74  40 82 00 14 */	bne lbl_80375C88
/* 80375C78  88 7E 00 1E */	lbz r3, 0x1e(r30)
/* 80375C7C  38 03 FF FF */	addi r0, r3, -1
/* 80375C80  98 1E 00 1E */	stb r0, 0x1e(r30)
/* 80375C84  48 00 00 1C */	b lbl_80375CA0
lbl_80375C88:
/* 80375C88  88 9E 00 1E */	lbz r4, 0x1e(r30)
/* 80375C8C  7F C3 F3 78 */	mr r3, r30
/* 80375C90  38 04 FF FF */	addi r0, r4, -1
/* 80375C94  98 1E 00 1E */	stb r0, 0x1e(r30)
/* 80375C98  A0 9C 00 06 */	lhz r4, 6(r28)
/* 80375C9C  4B FF F7 81 */	bl actor_free_check
lbl_80375CA0:
/* 80375CA0  7F E3 FB 78 */	mr r3, r31
/* 80375CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80375CA8  4B D2 52 71 */	bl func_8009AF18
/* 80375CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80375CB0  7C 08 03 A6 */	mtlr r0
/* 80375CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80375CB8  4E 80 00 20 */	blr 
