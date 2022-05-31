lbl_805CD38C:
/* 805CD38C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD390  7C 08 02 A6 */	mflr r0
/* 805CD394  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD398  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD39C  4B AC DB 39 */	bl func_8009AED4
/* 805CD3A0  3C A0 80 A4 */	lis r5, data_80A3CD80@ha /* 0x80A3CD80@ha */
/* 805CD3A4  7C 9E 23 78 */	mr r30, r4
/* 805CD3A8  38 05 CD 80 */	addi r0, r5, data_80A3CD80@l /* 0x80A3CD80@l */
/* 805CD3AC  7C 7D 1B 78 */	mr r29, r3
/* 805CD3B0  7C 1F 03 78 */	mr r31, r0
/* 805CD3B4  7F C3 F3 78 */	mr r3, r30
/* 805CD3B8  4B FF FE 39 */	bl func_805CD1F0
/* 805CD3BC  2C 03 00 00 */	cmpwi r3, 0
/* 805CD3C0  41 82 00 34 */	beq lbl_805CD3F4
/* 805CD3C4  7F C3 F3 78 */	mr r3, r30
/* 805CD3C8  4B FF FE 59 */	bl mCO_pat_idx_to_folder
/* 805CD3CC  7C 60 1B 78 */	mr r0, r3
/* 805CD3D0  7F C3 F3 78 */	mr r3, r30
/* 805CD3D4  7C 1F 03 78 */	mr r31, r0
/* 805CD3D8  4B FF FE 59 */	bl mCO_pat_idx_to_idx
/* 805CD3DC  7C 60 1B 78 */	mr r0, r3
/* 805CD3E0  7F A3 EB 78 */	mr r3, r29
/* 805CD3E4  7C 05 03 78 */	mr r5, r0
/* 805CD3E8  7F E4 FB 78 */	mr r4, r31
/* 805CD3EC  4B FF FF 7D */	bl mCO_get_texture
/* 805CD3F0  7C 7F 1B 78 */	mr r31, r3
lbl_805CD3F4:
/* 805CD3F4  7F E3 FB 78 */	mr r3, r31
/* 805CD3F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD3FC  4B AC DB 25 */	bl func_8009AF20
/* 805CD400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD404  7C 08 03 A6 */	mtlr r0
/* 805CD408  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD40C  4E 80 00 20 */	blr 
