lbl_803C2074:
/* 803C2074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C2078  7C 08 02 A6 */	mflr r0
/* 803C207C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C2080  39 61 00 20 */	addi r11, r1, 0x20
/* 803C2084  4B CD 8E 51 */	bl func_8009AED4
/* 803C2088  7C 7D 1B 78 */	mr r29, r3
/* 803C208C  7C 9E 23 78 */	mr r30, r4
/* 803C2090  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803C2094  7C 60 F2 14 */	add r3, r0, r30
/* 803C2098  88 63 00 20 */	lbz r3, 0x20(r3)
/* 803C209C  4B FF FD 5D */	bl mMsg_sound_voice_get2
/* 803C20A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C20A4  40 80 00 0C */	bge lbl_803C20B0
/* 803C20A8  38 60 00 00 */	li r3, 0
/* 803C20AC  48 00 00 90 */	b lbl_803C213C
lbl_803C20B0:
/* 803C20B0  80 1D 04 0C */	lwz r0, 0x40c(r29)
/* 803C20B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C20B8  41 82 00 34 */	beq lbl_803C20EC
/* 803C20BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C20C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C20C4  3C 63 00 02 */	addis r3, r3, 2
/* 803C20C8  88 03 0F 11 */	lbz r0, 0xf11(r3)
/* 803C20CC  2C 00 00 02 */	cmpwi r0, 2
/* 803C20D0  41 82 00 0C */	beq lbl_803C20DC
/* 803C20D4  38 60 00 54 */	li r3, 0x54
/* 803C20D8  48 26 BC 2D */	bl sAdo_SysTrgStart
lbl_803C20DC:
/* 803C20DC  7F A3 EB 78 */	mr r3, r29
/* 803C20E0  4B FF FF 2D */	bl mMsg_sound_voice_endcode_set
/* 803C20E4  38 60 00 00 */	li r3, 0
/* 803C20E8  48 00 00 54 */	b lbl_803C213C
lbl_803C20EC:
/* 803C20EC  7F A3 EB 78 */	mr r3, r29
/* 803C20F0  4B FF FE 19 */	bl mMsg_sound_npc_id_get
/* 803C20F4  7C 60 1B 78 */	mr r0, r3
/* 803C20F8  7F A3 EB 78 */	mr r3, r29
/* 803C20FC  7F C4 F3 78 */	mr r4, r30
/* 803C2100  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 803C2104  7C 06 07 34 */	extsh r6, r0
/* 803C2108  4B FF FE 25 */	bl mMsg_sound_voice_entry
/* 803C210C  2C 1F 00 81 */	cmpwi r31, 0x81
/* 803C2110  38 60 00 00 */	li r3, 0
/* 803C2114  41 82 00 28 */	beq lbl_803C213C
/* 803C2118  2C 1F 00 83 */	cmpwi r31, 0x83
/* 803C211C  41 82 00 20 */	beq lbl_803C213C
/* 803C2120  2C 1F 00 82 */	cmpwi r31, 0x82
/* 803C2124  41 82 00 18 */	beq lbl_803C213C
/* 803C2128  2C 1F 00 85 */	cmpwi r31, 0x85
/* 803C212C  41 82 00 10 */	beq lbl_803C213C
/* 803C2130  2C 1F 00 80 */	cmpwi r31, 0x80
/* 803C2134  41 82 00 08 */	beq lbl_803C213C
/* 803C2138  38 60 00 01 */	li r3, 1
lbl_803C213C:
/* 803C213C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C2140  4B CD 8D E1 */	bl func_8009AF20
/* 803C2144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C2148  7C 08 03 A6 */	mtlr r0
/* 803C214C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C2150  4E 80 00 20 */	blr 
