lbl_805D3170:
/* 805D3170  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D3174  7C 08 02 A6 */	mflr r0
/* 805D3178  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D317C  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3180  4B AC 7D 55 */	bl func_8009AED4
/* 805D3184  7C 9E 23 78 */	mr r30, r4
/* 805D3188  7C 7D 1B 78 */	mr r29, r3
/* 805D318C  38 81 00 14 */	addi r4, r1, 0x14
/* 805D3190  38 A1 00 10 */	addi r5, r1, 0x10
/* 805D3194  38 C1 00 0C */	addi r6, r1, 0xc
/* 805D3198  38 E1 00 08 */	addi r7, r1, 8
/* 805D319C  4B FF FC 3D */	bl mDE_waku_set_main_start_end
/* 805D31A0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 805D31A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D31A8  7C 1F 00 00 */	cmpw r31, r0
/* 805D31AC  41 81 00 E4 */	bgt lbl_805D3290
/* 805D31B0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805D31B4  80 01 00 08 */	lwz r0, 8(r1)
/* 805D31B8  7C 03 00 00 */	cmpw r3, r0
/* 805D31BC  40 81 00 08 */	ble lbl_805D31C4
/* 805D31C0  48 00 00 D0 */	b lbl_805D3290
lbl_805D31C4:
/* 805D31C4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 805D31C8  41 82 00 7C */	beq lbl_805D3244
/* 805D31CC  7C 7F 1B 78 */	mr r31, r3
/* 805D31D0  48 00 00 34 */	b lbl_805D3204
lbl_805D31D4:
/* 805D31D4  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 805D31D8  48 00 00 1C */	b lbl_805D31F4
lbl_805D31DC:
/* 805D31DC  88 DD 06 A4 */	lbz r6, 0x6a4(r29)
/* 805D31E0  7F A3 EB 78 */	mr r3, r29
/* 805D31E4  7F C4 F3 78 */	mr r4, r30
/* 805D31E8  7F E5 FB 78 */	mr r5, r31
/* 805D31EC  4B FF ED 35 */	bl mDE_set_pal_on_cursor
/* 805D31F0  3B DE 00 01 */	addi r30, r30, 1
lbl_805D31F4:
/* 805D31F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D31F8  7C 1E 00 00 */	cmpw r30, r0
/* 805D31FC  40 81 FF E0 */	ble lbl_805D31DC
/* 805D3200  3B FF 00 01 */	addi r31, r31, 1
lbl_805D3204:
/* 805D3204  80 01 00 08 */	lwz r0, 8(r1)
/* 805D3208  7C 1F 00 00 */	cmpw r31, r0
/* 805D320C  40 81 FF C8 */	ble lbl_805D31D4
/* 805D3210  48 00 00 80 */	b lbl_805D3290
/* 805D3214  48 00 00 30 */	b lbl_805D3244
lbl_805D3218:
/* 805D3218  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805D321C  7F A3 EB 78 */	mr r3, r29
/* 805D3220  88 DD 06 A4 */	lbz r6, 0x6a4(r29)
/* 805D3224  7F E4 FB 78 */	mr r4, r31
/* 805D3228  4B FF EC F9 */	bl mDE_set_pal_on_cursor
/* 805D322C  80 A1 00 08 */	lwz r5, 8(r1)
/* 805D3230  7F A3 EB 78 */	mr r3, r29
/* 805D3234  88 DD 06 A4 */	lbz r6, 0x6a4(r29)
/* 805D3238  7F E4 FB 78 */	mr r4, r31
/* 805D323C  4B FF EC E5 */	bl mDE_set_pal_on_cursor
/* 805D3240  3B FF 00 01 */	addi r31, r31, 1
lbl_805D3244:
/* 805D3244  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D3248  7C 1F 00 00 */	cmpw r31, r0
/* 805D324C  40 81 FF CC */	ble lbl_805D3218
/* 805D3250  83 E1 00 10 */	lwz r31, 0x10(r1)
/* 805D3254  48 00 00 30 */	b lbl_805D3284
lbl_805D3258:
/* 805D3258  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805D325C  7F A3 EB 78 */	mr r3, r29
/* 805D3260  88 DD 06 A4 */	lbz r6, 0x6a4(r29)
/* 805D3264  7F E5 FB 78 */	mr r5, r31
/* 805D3268  4B FF EC B9 */	bl mDE_set_pal_on_cursor
/* 805D326C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805D3270  7F A3 EB 78 */	mr r3, r29
/* 805D3274  88 DD 06 A4 */	lbz r6, 0x6a4(r29)
/* 805D3278  7F E5 FB 78 */	mr r5, r31
/* 805D327C  4B FF EC A5 */	bl mDE_set_pal_on_cursor
/* 805D3280  3B FF 00 01 */	addi r31, r31, 1
lbl_805D3284:
/* 805D3284  80 01 00 08 */	lwz r0, 8(r1)
/* 805D3288  7C 1F 00 00 */	cmpw r31, r0
/* 805D328C  40 81 FF CC */	ble lbl_805D3258
lbl_805D3290:
/* 805D3290  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3294  4B AC 7C 8D */	bl func_8009AF20
/* 805D3298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D329C  7C 08 03 A6 */	mtlr r0
/* 805D32A0  38 21 00 30 */	addi r1, r1, 0x30
/* 805D32A4  4E 80 00 20 */	blr 
