lbl_80524FB0:
/* 80524FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80524FB4  7C 08 02 A6 */	mflr r0
/* 80524FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80524FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80524FC0  4B B7 5F 15 */	bl func_8009AED4
/* 80524FC4  7C 7E 1B 78 */	mr r30, r3
/* 80524FC8  7C 9D 23 78 */	mr r29, r4
/* 80524FCC  4B EC 71 8D */	bl func_803EC158
/* 80524FD0  7C 7F 1B 78 */	mr r31, r3
/* 80524FD4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80524FD8  28 03 00 FF */	cmplwi r3, 0xff
/* 80524FDC  41 82 00 FC */	beq lbl_805250D8
/* 80524FE0  38 00 00 00 */	li r0, 0
/* 80524FE4  2C 03 00 14 */	cmpwi r3, 0x14
/* 80524FE8  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 80524FEC  38 00 00 20 */	li r0, 0x20
/* 80524FF0  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80524FF4  41 82 00 28 */	beq lbl_8052501C
/* 80524FF8  40 80 00 10 */	bge lbl_80525008
/* 80524FFC  2C 03 00 08 */	cmpwi r3, 8
/* 80525000  41 82 00 1C */	beq lbl_8052501C
/* 80525004  48 00 00 80 */	b lbl_80525084
lbl_80525008:
/* 80525008  2C 03 00 67 */	cmpwi r3, 0x67
/* 8052500C  40 80 00 78 */	bge lbl_80525084
/* 80525010  2C 03 00 65 */	cmpwi r3, 0x65
/* 80525014  40 80 00 2C */	bge lbl_80525040
/* 80525018  48 00 00 6C */	b lbl_80525084
lbl_8052501C:
/* 8052501C  4B EC 72 19 */	bl mSC_get_soncho_field_event
/* 80525020  3C 80 80 6A */	lis r4, field_table@ha /* 0x806A0CE0@ha */
/* 80525024  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80525028  38 A4 0C E0 */	addi r5, r4, field_table@l /* 0x806A0CE0@l */
/* 8052502C  7F C3 F3 78 */	mr r3, r30
/* 80525030  7C A5 00 AE */	lbzx r5, r5, r0
/* 80525034  7F A4 EB 78 */	mr r4, r29
/* 80525038  48 00 05 9D */	bl aES2_setup_think_proc
/* 8052503C  48 00 00 58 */	b lbl_80525094
lbl_80525040:
/* 80525040  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525044  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80525048  3C 63 00 02 */	addis r3, r3, 2
/* 8052504C  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 80525050  28 00 00 04 */	cmplwi r0, 4
/* 80525054  41 82 00 10 */	beq lbl_80525064
/* 80525058  4B EC 89 E1 */	bl mSC_LightHouse_Talk_After_Check
/* 8052505C  2C 03 00 00 */	cmpwi r3, 0
/* 80525060  41 82 00 10 */	beq lbl_80525070
lbl_80525064:
/* 80525064  7F C3 F3 78 */	mr r3, r30
/* 80525068  4B E4 F3 D9 */	bl Actor_delete
/* 8052506C  48 00 00 28 */	b lbl_80525094
lbl_80525070:
/* 80525070  7F C3 F3 78 */	mr r3, r30
/* 80525074  7F A4 EB 78 */	mr r4, r29
/* 80525078  38 A0 00 03 */	li r5, 3
/* 8052507C  48 00 05 59 */	bl aES2_setup_think_proc
/* 80525080  48 00 00 14 */	b lbl_80525094
lbl_80525084:
/* 80525084  7F C3 F3 78 */	mr r3, r30
/* 80525088  7F A4 EB 78 */	mr r4, r29
/* 8052508C  38 A0 00 04 */	li r5, 4
/* 80525090  48 00 05 45 */	bl aES2_setup_think_proc
lbl_80525094:
/* 80525094  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80525098  28 00 00 1A */	cmplwi r0, 0x1a
/* 8052509C  40 82 00 2C */	bne lbl_805250C8
/* 805250A0  88 1E 09 9B */	lbz r0, 0x99b(r30)
/* 805250A4  28 00 00 1F */	cmplwi r0, 0x1f
/* 805250A8  41 82 00 20 */	beq lbl_805250C8
/* 805250AC  A0 9E 09 98 */	lhz r4, 0x998(r30)
/* 805250B0  38 60 00 0C */	li r3, 0xc
/* 805250B4  38 00 00 1F */	li r0, 0x1f
/* 805250B8  38 84 FF FF */	addi r4, r4, -1
/* 805250BC  B0 9E 09 98 */	sth r4, 0x998(r30)
/* 805250C0  98 7E 09 9A */	stb r3, 0x99a(r30)
/* 805250C4  98 1E 09 9B */	stb r0, 0x99b(r30)
lbl_805250C8:
/* 805250C8  9B FE 09 AE */	stb r31, 0x9ae(r30)
/* 805250CC  7F E3 FB 78 */	mr r3, r31
/* 805250D0  4B EC 74 0D */	bl mSC_trophy_item
/* 805250D4  B0 7E 09 9C */	sth r3, 0x99c(r30)
lbl_805250D8:
/* 805250D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805250DC  4B B7 5E 45 */	bl func_8009AF20
/* 805250E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805250E4  7C 08 03 A6 */	mtlr r0
/* 805250E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805250EC  4E 80 00 20 */	blr 
