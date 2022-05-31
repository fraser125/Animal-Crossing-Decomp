lbl_805F3170:
/* 805F3170  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F3174  7C 08 02 A6 */	mflr r0
/* 805F3178  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F317C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F3180  4B AA 7D 45 */	bl func_8009AEC4
/* 805F3184  7C 7A 1B 78 */	mr r26, r3
/* 805F3188  7C FD 3B 78 */	mr r29, r7
/* 805F318C  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805F3190  2C 1D 00 03 */	cmpwi r29, 3
/* 805F3194  7C 99 23 78 */	mr r25, r4
/* 805F3198  7C BB 2B 78 */	mr r27, r5
/* 805F319C  83 E7 09 80 */	lwz r31, 0x980(r7)
/* 805F31A0  7C DC 33 78 */	mr r28, r6
/* 805F31A4  7D 1E 43 78 */	mr r30, r8
/* 805F31A8  40 82 00 1C */	bne lbl_805F31C4
/* 805F31AC  38 60 00 10 */	li r3, 0x10
/* 805F31B0  38 00 00 01 */	li r0, 1
/* 805F31B4  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 805F31B8  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805F31BC  B0 03 00 08 */	sth r0, 8(r3)
/* 805F31C0  48 00 01 24 */	b lbl_805F32E4
lbl_805F31C4:
/* 805F31C4  2C 1D 00 11 */	cmpwi r29, 0x11
/* 805F31C8  41 82 00 0C */	beq lbl_805F31D4
/* 805F31CC  2C 1D 00 14 */	cmpwi r29, 0x14
/* 805F31D0  40 82 00 38 */	bne lbl_805F3208
lbl_805F31D4:
/* 805F31D4  38 60 00 02 */	li r3, 2
/* 805F31D8  38 00 00 00 */	li r0, 0
/* 805F31DC  B0 7F 02 32 */	sth r3, 0x232(r31)
/* 805F31E0  7F 43 D3 78 */	mr r3, r26
/* 805F31E4  7F C4 F3 78 */	mr r4, r30
/* 805F31E8  9B BF 03 64 */	stb r29, 0x364(r31)
/* 805F31EC  9B DF 03 65 */	stb r30, 0x365(r31)
/* 805F31F0  A0 BB 00 00 */	lhz r5, 0(r27)
/* 805F31F4  B0 BF 02 34 */	sth r5, 0x234(r31)
/* 805F31F8  93 9F 03 60 */	stw r28, 0x360(r31)
/* 805F31FC  B0 1B 00 00 */	sth r0, 0(r27)
/* 805F3200  4B FF 64 ED */	bl mNW_on_hide_flg
/* 805F3204  48 00 00 E0 */	b lbl_805F32E4
lbl_805F3208:
/* 805F3208  2C 1D 00 12 */	cmpwi r29, 0x12
/* 805F320C  40 82 00 44 */	bne lbl_805F3250
/* 805F3210  4B FD A0 39 */	bl mCO_top_folder
/* 805F3214  38 00 00 02 */	li r0, 2
/* 805F3218  7C 64 1B 78 */	mr r4, r3
/* 805F321C  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805F3220  38 00 00 00 */	li r0, 0
/* 805F3224  7F 43 D3 78 */	mr r3, r26
/* 805F3228  7F C5 F3 78 */	mr r5, r30
/* 805F322C  9B BF 03 64 */	stb r29, 0x364(r31)
/* 805F3230  9B DF 03 65 */	stb r30, 0x365(r31)
/* 805F3234  A0 DB 00 00 */	lhz r6, 0(r27)
/* 805F3238  B0 DF 02 34 */	sth r6, 0x234(r31)
/* 805F323C  93 9F 03 60 */	stw r28, 0x360(r31)
/* 805F3240  98 9F 03 67 */	stb r4, 0x367(r31)
/* 805F3244  B0 1B 00 00 */	sth r0, 0(r27)
/* 805F3248  4B FD A0 95 */	bl mCO_on_hide_flg
/* 805F324C  48 00 00 98 */	b lbl_805F32E4
lbl_805F3250:
/* 805F3250  38 00 00 02 */	li r0, 2
/* 805F3254  2C 1D 00 09 */	cmpwi r29, 9
/* 805F3258  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805F325C  9B BF 03 64 */	stb r29, 0x364(r31)
/* 805F3260  9B DF 03 65 */	stb r30, 0x365(r31)
/* 805F3264  40 82 00 18 */	bne lbl_805F327C
/* 805F3268  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805F326C  80 63 09 C0 */	lwz r3, 0x9c0(r3)
/* 805F3270  88 03 0B A8 */	lbz r0, 0xba8(r3)
/* 805F3274  98 1F 03 67 */	stb r0, 0x367(r31)
/* 805F3278  48 00 00 0C */	b lbl_805F3284
lbl_805F327C:
/* 805F327C  38 00 00 00 */	li r0, 0
/* 805F3280  98 1F 03 67 */	stb r0, 0x367(r31)
lbl_805F3284:
/* 805F3284  28 19 00 00 */	cmplwi r25, 0
/* 805F3288  41 82 00 1C */	beq lbl_805F32A4
/* 805F328C  7F 24 CB 78 */	mr r4, r25
/* 805F3290  38 7F 02 36 */	addi r3, r31, 0x236
/* 805F3294  4B DC 96 E1 */	bl mMl_copy_mail
/* 805F3298  7F 23 CB 78 */	mr r3, r25
/* 805F329C  4B DC 94 65 */	bl mMl_clear_mail
/* 805F32A0  48 00 00 44 */	b lbl_805F32E4
lbl_805F32A4:
/* 805F32A4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 805F32A8  2C 1D 00 00 */	cmpwi r29, 0
/* 805F32AC  B0 1F 02 34 */	sth r0, 0x234(r31)
/* 805F32B0  93 9F 03 60 */	stw r28, 0x360(r31)
/* 805F32B4  40 82 00 28 */	bne lbl_805F32DC
/* 805F32B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F32BC  7F C4 F3 78 */	mr r4, r30
/* 805F32C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F32C4  38 A0 00 00 */	li r5, 0
/* 805F32C8  3C 63 00 02 */	addis r3, r3, 2
/* 805F32CC  38 C0 00 00 */	li r6, 0
/* 805F32D0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F32D4  4B DE DB 55 */	bl mPr_SetPossessionItem
/* 805F32D8  48 00 00 0C */	b lbl_805F32E4
lbl_805F32DC:
/* 805F32DC  38 00 00 00 */	li r0, 0
/* 805F32E0  B0 1B 00 00 */	sth r0, 0(r27)
lbl_805F32E4:
/* 805F32E4  7F 43 D3 78 */	mr r3, r26
/* 805F32E8  38 80 00 00 */	li r4, 0
/* 805F32EC  38 A0 00 00 */	li r5, 0
/* 805F32F0  4B FF C4 C5 */	bl mTG_return_tag_init
/* 805F32F4  7F 43 D3 78 */	mr r3, r26
/* 805F32F8  4B FF FE 35 */	bl mTG_set_catch_se
/* 805F32FC  39 61 00 30 */	addi r11, r1, 0x30
/* 805F3300  4B AA 7C 11 */	bl func_8009AF10
/* 805F3304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F3308  7C 08 03 A6 */	mtlr r0
/* 805F330C  38 21 00 30 */	addi r1, r1, 0x30
/* 805F3310  4E 80 00 20 */	blr 
