lbl_80405B4C:
/* 80405B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405B50  7C 08 02 A6 */	mflr r0
/* 80405B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405B58  38 00 00 00 */	li r0, 0
/* 80405B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405B60  7C 9F 23 78 */	mr r31, r4
/* 80405B64  93 C1 00 08 */	stw r30, 8(r1)
/* 80405B68  7C 7E 1B 78 */	mr r30, r3
/* 80405B6C  90 04 00 A4 */	stw r0, 0xa4(r4)
/* 80405B70  4B FF F8 C1 */	bl func_80405430
/* 80405B74  7F E3 FB 78 */	mr r3, r31
/* 80405B78  4B FF F2 7D */	bl game_get_controller
/* 80405B7C  38 60 00 00 */	li r3, 0
/* 80405B80  38 00 00 04 */	li r0, 4
/* 80405B84  98 7F 00 9E */	stb r3, 0x9e(r31)
/* 80405B88  7F E3 FB 78 */	mr r3, r31
/* 80405B8C  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405B90  4B FF F3 65 */	bl game_main
/* 80405B94  38 00 00 0B */	li r0, 0xb
/* 80405B98  3C 60 81 1C */	lis r3, data_811C5698@ha /* 0x811C5698@ha */
/* 80405B9C  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405BA0  80 03 56 98 */	lwz r0, data_811C5698@l(r3)  /* 0x811C5698@l */
/* 80405BA4  2C 00 00 02 */	cmpwi r0, 2
/* 80405BA8  40 80 00 A4 */	bge lbl_80405C4C
/* 80405BAC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80405BB0  3C 80 81 1C */	lis r4, skip_frame@ha /* 0x811C5328@ha */
/* 80405BB4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80405BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80405BBC  38 A4 53 28 */	addi r5, r4, skip_frame@l /* 0x811C5328@l */
/* 80405BC0  80 85 00 00 */	lwz r4, 0(r5)
/* 80405BC4  A8 03 00 DA */	lha r0, 0xda(r3)
/* 80405BC8  7C 04 00 00 */	cmpw r4, r0
/* 80405BCC  40 80 00 1C */	bge lbl_80405BE8
/* 80405BD0  38 04 00 01 */	addi r0, r4, 1
/* 80405BD4  90 05 00 00 */	stw r0, 0(r5)
/* 80405BD8  80 7E 03 38 */	lwz r3, 0x338(r30)
/* 80405BDC  38 03 00 01 */	addi r0, r3, 1
/* 80405BE0  90 1E 03 38 */	stw r0, 0x338(r30)
/* 80405BE4  48 00 00 68 */	b lbl_80405C4C
lbl_80405BE8:
/* 80405BE8  88 1F 00 9E */	lbz r0, 0x9e(r31)
/* 80405BEC  28 00 00 00 */	cmplwi r0, 0
/* 80405BF0  40 82 00 5C */	bne lbl_80405C4C
/* 80405BF4  38 00 00 00 */	li r0, 0
/* 80405BF8  7F C3 F3 78 */	mr r3, r30
/* 80405BFC  90 05 00 00 */	stw r0, 0(r5)
/* 80405C00  4B FF FC 85 */	bl graph_draw_finish
/* 80405C04  2C 03 00 00 */	cmpwi r3, 0
/* 80405C08  40 82 00 44 */	bne lbl_80405C4C
/* 80405C0C  38 00 00 0C */	li r0, 0xc
/* 80405C10  7F C3 F3 78 */	mr r3, r30
/* 80405C14  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405C18  4B FF FB 95 */	bl graph_task_set00
/* 80405C1C  38 00 00 0F */	li r0, 0xf
/* 80405C20  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80405C24  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405C28  80 9E 03 38 */	lwz r4, 0x338(r30)
/* 80405C2C  38 04 00 01 */	addi r0, r4, 1
/* 80405C30  90 1E 03 38 */	stw r0, 0x338(r30)
/* 80405C34  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80405C38  A8 64 01 16 */	lha r3, 0x116(r4)
/* 80405C3C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80405C40  41 82 00 0C */	beq lbl_80405C4C
/* 80405C44  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 80405C48  B0 04 01 16 */	sth r0, 0x116(r4)
lbl_80405C4C:
/* 80405C4C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80405C50  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80405C54  80 63 00 00 */	lwz r3, 0(r3)
/* 80405C58  A8 03 00 FC */	lha r0, 0xfc(r3)
/* 80405C5C  2C 00 00 02 */	cmpwi r0, 2
/* 80405C60  40 80 00 18 */	bge lbl_80405C78
/* 80405C64  38 00 00 10 */	li r0, 0x10
/* 80405C68  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405C6C  48 22 80 39 */	bl sAdo_GameFrame
/* 80405C70  38 00 00 11 */	li r0, 0x11
/* 80405C74  98 1E 03 48 */	stb r0, 0x348(r30)
lbl_80405C78:
/* 80405C78  7F C3 F3 78 */	mr r3, r30
/* 80405C7C  7F E4 FB 78 */	mr r4, r31
/* 80405C80  4B FF FE 89 */	bl reset_check
/* 80405C84  3C 60 81 1C */	lis r3, data_811C5698@ha /* 0x811C5698@ha */
/* 80405C88  80 03 56 98 */	lwz r0, data_811C5698@l(r3)  /* 0x811C5698@l */
/* 80405C8C  2C 00 00 01 */	cmpwi r0, 1
/* 80405C90  40 82 00 2C */	bne lbl_80405CBC
/* 80405C94  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80405C98  2C 00 00 00 */	cmpwi r0, 0
/* 80405C9C  40 82 00 20 */	bne lbl_80405CBC
/* 80405CA0  38 00 00 00 */	li r0, 0
/* 80405CA4  3C 60 80 63 */	lis r3, prenmi_init@ha /* 0x8062DAD8@ha */
/* 80405CA8  98 1F 00 9F */	stb r0, 0x9f(r31)
/* 80405CAC  38 63 DA D8 */	addi r3, r3, prenmi_init@l /* 0x8062DAD8@l */
/* 80405CB0  38 00 00 E8 */	li r0, 0xe8
/* 80405CB4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80405CB8  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80405CBC:
/* 80405CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405CC8  7C 08 03 A6 */	mtlr r0
/* 80405CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80405CD0  4E 80 00 20 */	blr 
