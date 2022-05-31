lbl_803D1B90:
/* 803D1B90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D1B94  7C 08 02 A6 */	mflr r0
/* 803D1B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D1B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1BA0  4B CC 93 35 */	bl func_8009AED4
/* 803D1BA4  7C 7D 1B 79 */	or. r29, r3, r3
/* 803D1BA8  3C 60 80 66 */	lis r3, l_no_name_npc_name@ha /* 0x8065B1D8@ha */
/* 803D1BAC  38 03 B1 D8 */	addi r0, r3, l_no_name_npc_name@l /* 0x8065B1D8@l */
/* 803D1BB0  7C 9E 23 78 */	mr r30, r4
/* 803D1BB4  7C 04 03 78 */	mr r4, r0
/* 803D1BB8  41 82 00 EC */	beq lbl_803D1CA4
/* 803D1BBC  28 1E 00 00 */	cmplwi r30, 0
/* 803D1BC0  41 82 00 E4 */	beq lbl_803D1CA4
/* 803D1BC4  88 1E 00 02 */	lbz r0, 2(r30)
/* 803D1BC8  28 00 00 04 */	cmplwi r0, 4
/* 803D1BCC  40 82 00 C8 */	bne lbl_803D1C94
/* 803D1BD0  80 9E 01 7C */	lwz r4, 0x17c(r30)
/* 803D1BD4  28 04 00 00 */	cmplwi r4, 0
/* 803D1BD8  41 82 00 10 */	beq lbl_803D1BE8
/* 803D1BDC  38 61 00 08 */	addi r3, r1, 8
/* 803D1BE0  4B FF FD 71 */	bl mNpc_GetNpcWorldNameAnm
/* 803D1BE4  48 00 00 BC */	b lbl_803D1CA0
lbl_803D1BE8:
/* 803D1BE8  A0 7E 00 06 */	lhz r3, 6(r30)
/* 803D1BEC  4B FF CF FD */	bl mNpc_GetSameEventNpc
/* 803D1BF0  28 03 00 00 */	cmplwi r3, 0
/* 803D1BF4  41 82 00 0C */	beq lbl_803D1C00
/* 803D1BF8  A3 E3 00 04 */	lhz r31, 4(r3)
/* 803D1BFC  48 00 00 20 */	b lbl_803D1C1C
lbl_803D1C00:
/* 803D1C00  A0 7E 00 06 */	lhz r3, 6(r30)
/* 803D1C04  4B FF D2 21 */	bl mNpc_GetSameMaskNpc
/* 803D1C08  28 03 00 00 */	cmplwi r3, 0
/* 803D1C0C  41 82 00 0C */	beq lbl_803D1C18
/* 803D1C10  A3 E3 00 02 */	lhz r31, 2(r3)
/* 803D1C14  48 00 00 08 */	b lbl_803D1C1C
lbl_803D1C18:
/* 803D1C18  A3 FE 00 06 */	lhz r31, 6(r30)
lbl_803D1C1C:
/* 803D1C1C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 803D1C20  28 00 D0 6F */	cmplwi r0, 0xd06f
/* 803D1C24  40 82 00 60 */	bne lbl_803D1C84
/* 803D1C28  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 803D1C2C  7F E4 FB 78 */	mr r4, r31
/* 803D1C30  38 61 00 08 */	addi r3, r1, 8
/* 803D1C34  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 803D1C38  7F C5 F3 78 */	mr r5, r30
/* 803D1C3C  4B FF FC 61 */	bl mNpc_GetCacheName
/* 803D1C40  2C 03 00 00 */	cmpwi r3, 0
/* 803D1C44  40 82 00 5C */	bne lbl_803D1CA0
/* 803D1C48  28 1E 00 01 */	cmplwi r30, 1
/* 803D1C4C  41 82 00 28 */	beq lbl_803D1C74
/* 803D1C50  38 61 00 08 */	addi r3, r1, 8
/* 803D1C54  38 80 00 08 */	li r4, 8
/* 803D1C58  38 A0 06 D7 */	li r5, 0x6d7
/* 803D1C5C  48 01 D0 71 */	bl mString_Load_StringFromRom
/* 803D1C60  7F E4 FB 78 */	mr r4, r31
/* 803D1C64  7F C5 F3 78 */	mr r5, r30
/* 803D1C68  38 61 00 08 */	addi r3, r1, 8
/* 803D1C6C  4B FF FC 8D */	bl mNpc_SetCacheName
/* 803D1C70  48 00 00 30 */	b lbl_803D1CA0
lbl_803D1C74:
/* 803D1C74  7F E4 FB 78 */	mr r4, r31
/* 803D1C78  38 61 00 08 */	addi r3, r1, 8
/* 803D1C7C  4B FF FE 7D */	bl mNpc_GetActorWorldName
/* 803D1C80  48 00 00 20 */	b lbl_803D1CA0
lbl_803D1C84:
/* 803D1C84  7F E4 FB 78 */	mr r4, r31
/* 803D1C88  38 61 00 08 */	addi r3, r1, 8
/* 803D1C8C  4B FF FE 6D */	bl mNpc_GetActorWorldName
/* 803D1C90  48 00 00 10 */	b lbl_803D1CA0
lbl_803D1C94:
/* 803D1C94  A0 9E 00 06 */	lhz r4, 6(r30)
/* 803D1C98  38 61 00 08 */	addi r3, r1, 8
/* 803D1C9C  4B FF FE 5D */	bl mNpc_GetActorWorldName
lbl_803D1CA0:
/* 803D1CA0  38 81 00 08 */	addi r4, r1, 8
lbl_803D1CA4:
/* 803D1CA4  7F A3 EB 78 */	mr r3, r29
/* 803D1CA8  48 00 E2 15 */	bl mPr_CopyPlayerName
/* 803D1CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1CB0  4B CC 92 71 */	bl func_8009AF20
/* 803D1CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D1CB8  7C 08 03 A6 */	mtlr r0
/* 803D1CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D1CC0  4E 80 00 20 */	blr 
