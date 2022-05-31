lbl_803E9AF8:
/* 803E9AF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E9AFC  7C 08 02 A6 */	mflr r0
/* 803E9B00  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E9B04  39 61 00 40 */	addi r11, r1, 0x40
/* 803E9B08  4B CB 13 AD */	bl func_8009AEB4
/* 803E9B0C  3C 80 80 66 */	lis r4, data_8065D590@ha /* 0x8065D590@ha */
/* 803E9B10  7C 7F 1B 78 */	mr r31, r3
/* 803E9B14  3B 84 D5 90 */	addi r28, r4, data_8065D590@l /* 0x8065D590@l */
/* 803E9B18  4B FB B1 79 */	bl mFI_CheckFieldData
/* 803E9B1C  2C 03 00 00 */	cmpwi r3, 0
/* 803E9B20  41 82 03 E0 */	beq lbl_803E9F00
/* 803E9B24  4B FF FE 41 */	bl mSP_GetShopLevel
/* 803E9B28  7C 75 1B 78 */	mr r21, r3
/* 803E9B2C  48 00 0B E5 */	bl mSP_ShopOpen
/* 803E9B30  7C 76 1B 78 */	mr r22, r3
/* 803E9B34  4B FF FE 1D */	bl mSP_GetSalesSum
/* 803E9B38  2C 15 00 01 */	cmpwi r21, 1
/* 803E9B3C  41 82 00 28 */	beq lbl_803E9B64
/* 803E9B40  40 80 00 10 */	bge lbl_803E9B50
/* 803E9B44  2C 15 00 00 */	cmpwi r21, 0
/* 803E9B48  40 80 00 14 */	bge lbl_803E9B5C
/* 803E9B4C  48 00 00 2C */	b lbl_803E9B78
lbl_803E9B50:
/* 803E9B50  2C 15 00 03 */	cmpwi r21, 3
/* 803E9B54  40 80 00 24 */	bge lbl_803E9B78
/* 803E9B58  48 00 00 14 */	b lbl_803E9B6C
lbl_803E9B5C:
/* 803E9B5C  7C 77 1B 78 */	mr r23, r3
/* 803E9B60  48 00 00 20 */	b lbl_803E9B80
lbl_803E9B64:
/* 803E9B64  3A E3 9E 58 */	addi r23, r3, -25000
/* 803E9B68  48 00 00 18 */	b lbl_803E9B80
lbl_803E9B6C:
/* 803E9B6C  3E E3 FF FF */	addis r23, r3, 0xffff
/* 803E9B70  3A F7 A0 70 */	addi r23, r23, -24464
/* 803E9B74  48 00 00 0C */	b lbl_803E9B80
lbl_803E9B78:
/* 803E9B78  3E E3 FF FC */	addis r23, r3, 0xfffc
/* 803E9B7C  3A F7 56 80 */	addi r23, r23, 0x5680
lbl_803E9B80:
/* 803E9B80  7F E3 FB 78 */	mr r3, r31
/* 803E9B84  38 80 00 C8 */	li r4, 0xc8
/* 803E9B88  38 A0 00 C8 */	li r5, 0xc8
/* 803E9B8C  38 C0 00 FA */	li r6, 0xfa
/* 803E9B90  38 E0 00 FF */	li r7, 0xff
/* 803E9B94  4B C7 16 0D */	bl gfxprint_color
/* 803E9B98  7F E3 FB 78 */	mr r3, r31
/* 803E9B9C  38 80 00 03 */	li r4, 3
/* 803E9BA0  38 A0 00 0C */	li r5, 0xc
/* 803E9BA4  4B C7 16 6D */	bl gfxprint_locate8x8
/* 803E9BA8  3C 60 20 00 */	lis r3, 0x2000
/* 803E9BAC  4B FB 0E 6D */	bl mEv_CheckEvent
/* 803E9BB0  2C 03 00 00 */	cmpwi r3, 0
/* 803E9BB4  40 82 00 F0 */	bne lbl_803E9CA4
/* 803E9BB8  7E C3 B3 78 */	mr r3, r22
/* 803E9BBC  48 00 21 15 */	bl mSP_ShopStatus2String
/* 803E9BC0  7C 67 1B 78 */	mr r7, r3
/* 803E9BC4  7F E3 FB 78 */	mr r3, r31
/* 803E9BC8  7E A5 AB 78 */	mr r5, r21
/* 803E9BCC  7E E6 BB 78 */	mr r6, r23
/* 803E9BD0  38 9C 02 50 */	addi r4, r28, 0x250
/* 803E9BD4  4C C6 31 82 */	crclr 6
/* 803E9BD8  4B C7 1D 45 */	bl gfxprint_printf
/* 803E9BDC  7F E3 FB 78 */	mr r3, r31
/* 803E9BE0  38 80 00 C8 */	li r4, 0xc8
/* 803E9BE4  38 A0 00 C8 */	li r5, 0xc8
/* 803E9BE8  38 C0 00 FA */	li r6, 0xfa
/* 803E9BEC  38 E0 00 FF */	li r7, 0xff
/* 803E9BF0  4B C7 15 B1 */	bl gfxprint_color
/* 803E9BF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9BF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9BFC  3C 63 00 02 */	addis r3, r3, 2
/* 803E9C00  88 03 03 41 */	lbz r0, 0x341(r3)
/* 803E9C04  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9C08  4B FF FE 51 */	bl mSP_GetGoodsPercent
/* 803E9C0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9C10  7C 7E 1B 78 */	mr r30, r3
/* 803E9C14  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9C18  3C 63 00 02 */	addis r3, r3, 2
/* 803E9C1C  88 03 03 42 */	lbz r0, 0x342(r3)
/* 803E9C20  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9C24  4B FF FE 35 */	bl mSP_GetGoodsPercent
/* 803E9C28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9C2C  7C 7D 1B 78 */	mr r29, r3
/* 803E9C30  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9C34  3C 63 00 02 */	addis r3, r3, 2
/* 803E9C38  88 03 03 43 */	lbz r0, 0x343(r3)
/* 803E9C3C  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9C40  4B FF FE 19 */	bl mSP_GetGoodsPercent
/* 803E9C44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9C48  7C 76 1B 78 */	mr r22, r3
/* 803E9C4C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9C50  3C 63 00 02 */	addis r3, r3, 2
/* 803E9C54  88 03 03 44 */	lbz r0, 0x344(r3)
/* 803E9C58  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9C5C  4B FF FD FD */	bl mSP_GetGoodsPercent
/* 803E9C60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9C64  7C 75 1B 78 */	mr r21, r3
/* 803E9C68  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9C6C  3C 63 00 02 */	addis r3, r3, 2
/* 803E9C70  88 03 03 40 */	lbz r0, 0x340(r3)
/* 803E9C74  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9C78  4B FF FD E1 */	bl mSP_GetGoodsPercent
/* 803E9C7C  7C 65 1B 78 */	mr r5, r3
/* 803E9C80  7F E3 FB 78 */	mr r3, r31
/* 803E9C84  7E A6 AB 78 */	mr r6, r21
/* 803E9C88  7E C7 B3 78 */	mr r7, r22
/* 803E9C8C  7F A8 EB 78 */	mr r8, r29
/* 803E9C90  7F C9 F3 78 */	mr r9, r30
/* 803E9C94  38 9C 02 5C */	addi r4, r28, 0x25c
/* 803E9C98  4C C6 31 82 */	crclr 6
/* 803E9C9C  4B C7 1C 81 */	bl gfxprint_printf
/* 803E9CA0  48 00 01 1C */	b lbl_803E9DBC
lbl_803E9CA4:
/* 803E9CA4  7F E3 FB 78 */	mr r3, r31
/* 803E9CA8  38 80 00 C8 */	li r4, 0xc8
/* 803E9CAC  38 A0 00 64 */	li r5, 0x64
/* 803E9CB0  38 C0 00 64 */	li r6, 0x64
/* 803E9CB4  38 E0 00 FF */	li r7, 0xff
/* 803E9CB8  4B C7 14 E9 */	bl gfxprint_color
/* 803E9CBC  7E C3 B3 78 */	mr r3, r22
/* 803E9CC0  48 00 20 11 */	bl mSP_ShopStatus2String
/* 803E9CC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9CC8  7C 67 1B 78 */	mr r7, r3
/* 803E9CCC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E9CD0  7F E3 FB 78 */	mr r3, r31
/* 803E9CD4  3C 84 00 02 */	addis r4, r4, 2
/* 803E9CD8  7E A5 AB 78 */	mr r5, r21
/* 803E9CDC  A1 04 04 7A */	lhz r8, 0x47a(r4)
/* 803E9CE0  7E E6 BB 78 */	mr r6, r23
/* 803E9CE4  89 24 04 79 */	lbz r9, 0x479(r4)
/* 803E9CE8  89 44 04 77 */	lbz r10, 0x477(r4)
/* 803E9CEC  38 9C 02 74 */	addi r4, r28, 0x274
/* 803E9CF0  4C C6 31 82 */	crclr 6
/* 803E9CF4  4B C7 1C 29 */	bl gfxprint_printf
/* 803E9CF8  7F E3 FB 78 */	mr r3, r31
/* 803E9CFC  38 80 00 C8 */	li r4, 0xc8
/* 803E9D00  38 A0 00 C8 */	li r5, 0xc8
/* 803E9D04  38 C0 00 FA */	li r6, 0xfa
/* 803E9D08  38 E0 00 FF */	li r7, 0xff
/* 803E9D0C  4B C7 14 95 */	bl gfxprint_color
/* 803E9D10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9D14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9D18  3C 63 00 02 */	addis r3, r3, 2
/* 803E9D1C  88 03 03 41 */	lbz r0, 0x341(r3)
/* 803E9D20  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9D24  4B FF FD 35 */	bl mSP_GetGoodsPercent
/* 803E9D28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9D2C  7C 7E 1B 78 */	mr r30, r3
/* 803E9D30  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9D34  3C 63 00 02 */	addis r3, r3, 2
/* 803E9D38  88 03 03 42 */	lbz r0, 0x342(r3)
/* 803E9D3C  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9D40  4B FF FD 19 */	bl mSP_GetGoodsPercent
/* 803E9D44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9D48  7C 7D 1B 78 */	mr r29, r3
/* 803E9D4C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9D50  3C 63 00 02 */	addis r3, r3, 2
/* 803E9D54  88 03 03 43 */	lbz r0, 0x343(r3)
/* 803E9D58  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9D5C  4B FF FC FD */	bl mSP_GetGoodsPercent
/* 803E9D60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9D64  7C 76 1B 78 */	mr r22, r3
/* 803E9D68  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9D6C  3C 63 00 02 */	addis r3, r3, 2
/* 803E9D70  88 03 03 44 */	lbz r0, 0x344(r3)
/* 803E9D74  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9D78  4B FF FC E1 */	bl mSP_GetGoodsPercent
/* 803E9D7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9D80  7C 75 1B 78 */	mr r21, r3
/* 803E9D84  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9D88  3C 63 00 02 */	addis r3, r3, 2
/* 803E9D8C  88 03 03 40 */	lbz r0, 0x340(r3)
/* 803E9D90  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9D94  4B FF FC C5 */	bl mSP_GetGoodsPercent
/* 803E9D98  7C 65 1B 78 */	mr r5, r3
/* 803E9D9C  7F E3 FB 78 */	mr r3, r31
/* 803E9DA0  7E A6 AB 78 */	mr r6, r21
/* 803E9DA4  7E C7 B3 78 */	mr r7, r22
/* 803E9DA8  7F A8 EB 78 */	mr r8, r29
/* 803E9DAC  7F C9 F3 78 */	mr r9, r30
/* 803E9DB0  38 9C 02 88 */	addi r4, r28, 0x288
/* 803E9DB4  4C C6 31 82 */	crclr 6
/* 803E9DB8  4B C7 1B 65 */	bl gfxprint_printf
lbl_803E9DBC:
/* 803E9DBC  7F E3 FB 78 */	mr r3, r31
/* 803E9DC0  38 80 00 C8 */	li r4, 0xc8
/* 803E9DC4  38 A0 00 C8 */	li r5, 0xc8
/* 803E9DC8  38 C0 00 FA */	li r6, 0xfa
/* 803E9DCC  38 E0 00 FF */	li r7, 0xff
/* 803E9DD0  4B C7 13 D1 */	bl gfxprint_color
/* 803E9DD4  7F E3 FB 78 */	mr r3, r31
/* 803E9DD8  38 80 00 03 */	li r4, 3
/* 803E9DDC  38 A0 00 0D */	li r5, 0xd
/* 803E9DE0  4B C7 14 31 */	bl gfxprint_locate8x8
/* 803E9DE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9DE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9DEC  3F 63 00 02 */	addis r27, r3, 2
/* 803E9DF0  88 1B 03 41 */	lbz r0, 0x341(r27)
/* 803E9DF4  54 03 E7 BE */	rlwinm r3, r0, 0x1c, 0x1e, 0x1f
/* 803E9DF8  4B FF FC 61 */	bl mSP_GetGoodsPercent
/* 803E9DFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9E00  7C 7D 1B 78 */	mr r29, r3
/* 803E9E04  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9E08  3F 43 00 02 */	addis r26, r3, 2
/* 803E9E0C  88 1A 03 42 */	lbz r0, 0x342(r26)
/* 803E9E10  54 03 E7 BE */	rlwinm r3, r0, 0x1c, 0x1e, 0x1f
/* 803E9E14  4B FF FC 45 */	bl mSP_GetGoodsPercent
/* 803E9E18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9E1C  7C 7E 1B 78 */	mr r30, r3
/* 803E9E20  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9E24  3F 23 00 02 */	addis r25, r3, 2
/* 803E9E28  88 19 03 43 */	lbz r0, 0x343(r25)
/* 803E9E2C  54 03 E7 BE */	rlwinm r3, r0, 0x1c, 0x1e, 0x1f
/* 803E9E30  4B FF FC 29 */	bl mSP_GetGoodsPercent
/* 803E9E34  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9E38  7C 75 1B 78 */	mr r21, r3
/* 803E9E3C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9E40  3F 03 00 02 */	addis r24, r3, 2
/* 803E9E44  88 18 03 44 */	lbz r0, 0x344(r24)
/* 803E9E48  54 03 E7 BE */	rlwinm r3, r0, 0x1c, 0x1e, 0x1f
/* 803E9E4C  4B FF FC 0D */	bl mSP_GetGoodsPercent
/* 803E9E50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9E54  7C 76 1B 78 */	mr r22, r3
/* 803E9E58  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9E5C  3E E3 00 02 */	addis r23, r3, 2
/* 803E9E60  88 17 03 40 */	lbz r0, 0x340(r23)
/* 803E9E64  54 03 E7 BE */	rlwinm r3, r0, 0x1c, 0x1e, 0x1f
/* 803E9E68  4B FF FB F1 */	bl mSP_GetGoodsPercent
/* 803E9E6C  7C 65 1B 78 */	mr r5, r3
/* 803E9E70  7F E3 FB 78 */	mr r3, r31
/* 803E9E74  7E C6 B3 78 */	mr r6, r22
/* 803E9E78  7E A7 AB 78 */	mr r7, r21
/* 803E9E7C  7F C8 F3 78 */	mr r8, r30
/* 803E9E80  7F A9 EB 78 */	mr r9, r29
/* 803E9E84  38 9C 02 A0 */	addi r4, r28, 0x2a0
/* 803E9E88  4C C6 31 82 */	crclr 6
/* 803E9E8C  4B C7 1A 91 */	bl gfxprint_printf
/* 803E9E90  88 1B 03 41 */	lbz r0, 0x341(r27)
/* 803E9E94  54 03 F7 BE */	rlwinm r3, r0, 0x1e, 0x1e, 0x1f
/* 803E9E98  4B FF FB C1 */	bl mSP_GetGoodsPercent
/* 803E9E9C  88 1A 03 42 */	lbz r0, 0x342(r26)
/* 803E9EA0  7C 7A 1B 78 */	mr r26, r3
/* 803E9EA4  54 03 F7 BE */	rlwinm r3, r0, 0x1e, 0x1e, 0x1f
/* 803E9EA8  4B FF FB B1 */	bl mSP_GetGoodsPercent
/* 803E9EAC  88 19 03 43 */	lbz r0, 0x343(r25)
/* 803E9EB0  7C 79 1B 78 */	mr r25, r3
/* 803E9EB4  54 03 F7 BE */	rlwinm r3, r0, 0x1e, 0x1e, 0x1f
/* 803E9EB8  4B FF FB A1 */	bl mSP_GetGoodsPercent
/* 803E9EBC  88 18 03 44 */	lbz r0, 0x344(r24)
/* 803E9EC0  7C 78 1B 78 */	mr r24, r3
/* 803E9EC4  54 03 F7 BE */	rlwinm r3, r0, 0x1e, 0x1e, 0x1f
/* 803E9EC8  4B FF FB 91 */	bl mSP_GetGoodsPercent
/* 803E9ECC  88 17 03 40 */	lbz r0, 0x340(r23)
/* 803E9ED0  7C 77 1B 78 */	mr r23, r3
/* 803E9ED4  54 03 F7 BE */	rlwinm r3, r0, 0x1e, 0x1e, 0x1f
/* 803E9ED8  4B FF FB 81 */	bl mSP_GetGoodsPercent
/* 803E9EDC  7C 65 1B 78 */	mr r5, r3
/* 803E9EE0  7F E3 FB 78 */	mr r3, r31
/* 803E9EE4  7E E6 BB 78 */	mr r6, r23
/* 803E9EE8  7F 07 C3 78 */	mr r7, r24
/* 803E9EEC  7F 28 CB 78 */	mr r8, r25
/* 803E9EF0  7F 49 D3 78 */	mr r9, r26
/* 803E9EF4  38 9C 02 B8 */	addi r4, r28, 0x2b8
/* 803E9EF8  4C C6 31 82 */	crclr 6
/* 803E9EFC  4B C7 1A 21 */	bl gfxprint_printf
lbl_803E9F00:
/* 803E9F00  39 61 00 40 */	addi r11, r1, 0x40
/* 803E9F04  4B CB 0F FD */	bl func_8009AF00
/* 803E9F08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E9F0C  7C 08 03 A6 */	mtlr r0
/* 803E9F10  38 21 00 40 */	addi r1, r1, 0x40
/* 803E9F14  4E 80 00 20 */	blr 
