lbl_8050A474:
/* 8050A474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050A478  7C 08 02 A6 */	mflr r0
/* 8050A47C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050A480  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A484  4B B9 0A 51 */	bl func_8009AED4
/* 8050A488  3C A0 80 6A */	lis r5, data_8069E818@ha /* 0x8069E818@ha */
/* 8050A48C  7C 7D 1B 78 */	mr r29, r3
/* 8050A490  38 05 E8 18 */	addi r0, r5, data_8069E818@l /* 0x8069E818@l */
/* 8050A494  7C 9E 23 78 */	mr r30, r4
/* 8050A498  7C 04 03 78 */	mr r4, r0
/* 8050A49C  4B FF EA E9 */	bl mRF_CpyBlockData
/* 8050A4A0  3C 80 80 6A */	lis r4, data_8069E818@ha /* 0x8069E818@ha */
/* 8050A4A4  7F C3 F3 78 */	mr r3, r30
/* 8050A4A8  38 84 E8 18 */	addi r4, r4, data_8069E818@l /* 0x8069E818@l */
/* 8050A4AC  4B FF EA D9 */	bl mRF_CpyBlockData
/* 8050A4B0  3C 60 80 6A */	lis r3, data_8069E818@ha /* 0x8069E818@ha */
/* 8050A4B4  3B E3 E8 18 */	addi r31, r3, data_8069E818@l /* 0x8069E818@l */
/* 8050A4B8  48 00 00 1C */	b lbl_8050A4D4
lbl_8050A4BC:
/* 8050A4BC  7F A3 EB 78 */	mr r3, r29
/* 8050A4C0  7F E4 FB 78 */	mr r4, r31
/* 8050A4C4  4B FF EA C1 */	bl mRF_CpyBlockData
/* 8050A4C8  7F C3 F3 78 */	mr r3, r30
/* 8050A4CC  7F E4 FB 78 */	mr r4, r31
/* 8050A4D0  4B FF EA B5 */	bl mRF_CpyBlockData
lbl_8050A4D4:
/* 8050A4D4  7F C3 F3 78 */	mr r3, r30
/* 8050A4D8  7F A4 EB 78 */	mr r4, r29
/* 8050A4DC  4B FF F6 B1 */	bl mRF_SetRandomBlockData
/* 8050A4E0  2C 03 00 00 */	cmpwi r3, 0
/* 8050A4E4  41 82 FF D8 */	beq lbl_8050A4BC
/* 8050A4E8  7F A3 EB 78 */	mr r3, r29
/* 8050A4EC  7F C4 F3 78 */	mr r4, r30
/* 8050A4F0  4B FF EF B1 */	bl mRF_DecideRiverAlbuminCliff
/* 8050A4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A4F8  4B B9 0A 29 */	bl func_8009AF20
/* 8050A4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050A500  7C 08 03 A6 */	mtlr r0
/* 8050A504  38 21 00 20 */	addi r1, r1, 0x20
/* 8050A508  4E 80 00 20 */	blr 
