lbl_8062AD48:
/* 8062AD48  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8062AD4C  7C 08 02 A6 */	mflr r0
/* 8062AD50  90 01 01 64 */	stw r0, 0x164(r1)
/* 8062AD54  39 61 01 60 */	addi r11, r1, 0x160
/* 8062AD58  4B A7 01 79 */	bl func_8009AED0
/* 8062AD5C  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8062AD60  7C 7E 1B 78 */	mr r30, r3
/* 8062AD64  38 66 61 38 */	addi r3, r6, debug_mode@l /* 0x81166138@l */
/* 8062AD68  7C 9F 23 78 */	mr r31, r4
/* 8062AD6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8062AD70  7C BC 2B 78 */	mr r28, r5
/* 8062AD74  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062AD78  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062AD7C  40 82 00 10 */	bne lbl_8062AD8C
/* 8062AD80  A8 03 10 8C */	lha r0, 0x108c(r3)
/* 8062AD84  7C 00 07 35 */	extsh. r0, r0
/* 8062AD88  41 82 00 E4 */	beq lbl_8062AE6C
lbl_8062AD8C:
/* 8062AD8C  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8062AD90  7F A3 EB 78 */	mr r3, r29
/* 8062AD94  4B DD A6 35 */	bl func_804053C8
/* 8062AD98  90 61 00 10 */	stw r3, 0x10(r1)
/* 8062AD9C  3C 00 DE 00 */	lis r0, 0xde00
/* 8062ADA0  80 9F 02 C0 */	lwz r4, 0x2c0(r31)
/* 8062ADA4  38 64 00 08 */	addi r3, r4, 8
/* 8062ADA8  90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 8062ADAC  90 04 00 00 */	stw r0, 0(r4)
/* 8062ADB0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8062ADB4  90 04 00 04 */	stw r0, 4(r4)
/* 8062ADB8  88 1E 20 D3 */	lbz r0, 0x20d3(r30)
/* 8062ADBC  28 00 00 03 */	cmplwi r0, 3
/* 8062ADC0  40 82 00 64 */	bne lbl_8062AE24
/* 8062ADC4  7F 84 E3 78 */	mr r4, r28
/* 8062ADC8  38 61 00 28 */	addi r3, r1, 0x28
/* 8062ADCC  4B DC 90 09 */	bl initView
/* 8062ADD0  38 C0 00 00 */	li r6, 0
/* 8062ADD4  38 60 00 0A */	li r3, 0xa
/* 8062ADD8  38 A0 00 F0 */	li r5, 0xf0
/* 8062ADDC  38 00 01 40 */	li r0, 0x140
/* 8062ADE0  90 61 01 40 */	stw r3, 0x140(r1)
/* 8062ADE4  38 61 00 28 */	addi r3, r1, 0x28
/* 8062ADE8  38 81 00 14 */	addi r4, r1, 0x14
/* 8062ADEC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8062ADF0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8062ADF4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8062ADF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8062ADFC  4B DC 91 6D */	bl setScissorView
/* 8062AE00  38 61 00 28 */	addi r3, r1, 0x28
/* 8062AE04  38 A1 00 10 */	addi r5, r1, 0x10
/* 8062AE08  38 80 00 0F */	li r4, 0xf
/* 8062AE0C  4B DC 9B F5 */	bl showView1
/* 8062AE10  81 9E 23 00 */	lwz r12, 0x2300(r30)
/* 8062AE14  38 7E 20 D8 */	addi r3, r30, 0x20d8
/* 8062AE18  38 81 00 10 */	addi r4, r1, 0x10
/* 8062AE1C  7D 89 03 A6 */	mtctr r12
/* 8062AE20  4E 80 04 21 */	bctrl 
lbl_8062AE24:
/* 8062AE24  38 7E 23 18 */	addi r3, r30, 0x2318
/* 8062AE28  38 81 00 10 */	addi r4, r1, 0x10
/* 8062AE2C  4B D7 65 0D */	bl fbdemo_fade_draw
/* 8062AE30  80 9E 23 FC */	lwz r4, 0x23fc(r30)
/* 8062AE34  38 61 00 10 */	addi r3, r1, 0x10
/* 8062AE38  4B DB AA CD */	bl fade_rgba8888_draw
/* 8062AE3C  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8062AE40  3C 80 DF 00 */	lis r4, 0xdf00
/* 8062AE44  38 00 00 00 */	li r0, 0
/* 8062AE48  7F A3 EB 78 */	mr r3, r29
/* 8062AE4C  38 A6 00 08 */	addi r5, r6, 8
/* 8062AE50  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062AE54  90 86 00 00 */	stw r4, 0(r6)
/* 8062AE58  90 06 00 04 */	stw r0, 4(r6)
/* 8062AE5C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8062AE60  4B DD A5 71 */	bl gfxclose
/* 8062AE64  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8062AE68  90 1F 02 D0 */	stw r0, 0x2d0(r31)
lbl_8062AE6C:
/* 8062AE6C  88 1E 20 D2 */	lbz r0, 0x20d2(r30)
/* 8062AE70  28 00 00 03 */	cmplwi r0, 3
/* 8062AE74  40 82 00 2C */	bne lbl_8062AEA0
/* 8062AE78  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 8062AE7C  3C 60 81 23 */	lis r3, fbdemo@ha /* 0x81233960@ha */
/* 8062AE80  38 63 39 60 */	addi r3, r3, fbdemo@l /* 0x81233960@l */
/* 8062AE84  38 81 00 0C */	addi r4, r1, 0xc
/* 8062AE88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062AE8C  4B D7 5A 51 */	bl fbdemo_draw
/* 8062AE90  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8062AE94  38 60 00 01 */	li r3, 1
/* 8062AE98  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8062AE9C  48 00 02 18 */	b lbl_8062B0B4
lbl_8062AEA0:
/* 8062AEA0  80 1E 1D EC */	lwz r0, 0x1dec(r30)
/* 8062AEA4  2C 00 00 02 */	cmpwi r0, 2
/* 8062AEA8  40 82 00 28 */	bne lbl_8062AED0
/* 8062AEAC  38 00 00 03 */	li r0, 3
/* 8062AEB0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062AEB4  90 1E 1D EC */	stw r0, 0x1dec(r30)
/* 8062AEB8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062AEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8062AEC0  A8 03 00 DA */	lha r0, 0xda(r3)
/* 8062AEC4  7C 00 00 D0 */	neg r0, r0
/* 8062AEC8  B0 03 00 DA */	sth r0, 0xda(r3)
/* 8062AECC  48 00 00 14 */	b lbl_8062AEE0
lbl_8062AED0:
/* 8062AED0  2C 00 00 05 */	cmpwi r0, 5
/* 8062AED4  41 80 00 0C */	blt lbl_8062AEE0
/* 8062AED8  38 00 00 00 */	li r0, 0
/* 8062AEDC  90 1E 1D EC */	stw r0, 0x1dec(r30)
lbl_8062AEE0:
/* 8062AEE0  80 1E 1D EC */	lwz r0, 0x1dec(r30)
/* 8062AEE4  2C 00 00 03 */	cmpwi r0, 3
/* 8062AEE8  40 82 00 98 */	bne lbl_8062AF80
/* 8062AEEC  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 8062AEF0  3C 80 E7 00 */	lis r4, 0xe700
/* 8062AEF4  38 00 00 00 */	li r0, 0
/* 8062AEF8  90 83 00 00 */	stw r4, 0(r3)
/* 8062AEFC  90 03 00 04 */	stw r0, 4(r3)
/* 8062AF00  38 63 00 08 */	addi r3, r3, 8
/* 8062AF04  4B DB A3 9D */	bl gfx_rect_moji
/* 8062AF08  3C 00 EF 20 */	lis r0, 0xef20
/* 8062AF0C  3C 80 FD 96 */	lis r4, 0xFD96 /* 0xFD95DE7F@ha */
/* 8062AF10  90 03 00 00 */	stw r0, 0(r3)
/* 8062AF14  39 00 00 00 */	li r8, 0
/* 8062AF18  3C C0 81 23 */	lis r6, prbuf@ha /* 0x81233B98@ha */
/* 8062AF1C  3C A0 E4 A0 */	lis r5, 0xE4A0 /* 0xE49FC77C@ha */
/* 8062AF20  91 03 00 04 */	stw r8, 4(r3)
/* 8062AF24  38 04 DE 7F */	addi r0, r4, 0xDE7F /* 0xFD95DE7F@l */
/* 8062AF28  39 23 00 28 */	addi r9, r3, 0x28
/* 8062AF2C  3C 80 04 00 */	lis r4, 0x0400 /* 0x04000400@ha */
/* 8062AF30  90 03 00 08 */	stw r0, 8(r3)
/* 8062AF34  38 C6 3B 98 */	addi r6, r6, prbuf@l /* 0x81233B98@l */
/* 8062AF38  7D 2A 4B 78 */	mr r10, r9
/* 8062AF3C  3C 00 D2 F0 */	lis r0, 0xd2f0
/* 8062AF40  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8062AF44  38 E5 C7 7C */	addi r7, r5, 0xC77C /* 0xE49FC77C@l */
/* 8062AF48  3C C0 E1 00 */	lis r6, 0xe100
/* 8062AF4C  3C A0 F1 00 */	lis r5, 0xf100
/* 8062AF50  90 03 00 10 */	stw r0, 0x10(r3)
/* 8062AF54  38 04 04 00 */	addi r0, r4, 0x0400 /* 0x04000400@l */
/* 8062AF58  39 29 00 08 */	addi r9, r9, 8
/* 8062AF5C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8062AF60  91 03 00 1C */	stw r8, 0x1c(r3)
/* 8062AF64  90 C3 00 20 */	stw r6, 0x20(r3)
/* 8062AF68  91 03 00 24 */	stw r8, 0x24(r3)
/* 8062AF6C  38 60 00 01 */	li r3, 1
/* 8062AF70  90 AA 00 00 */	stw r5, 0(r10)
/* 8062AF74  90 0A 00 04 */	stw r0, 4(r10)
/* 8062AF78  91 3F 02 D0 */	stw r9, 0x2d0(r31)
/* 8062AF7C  48 00 01 38 */	b lbl_8062B0B4
lbl_8062AF80:
/* 8062AF80  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062AF84  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062AF88  80 63 00 00 */	lwz r3, 0(r3)
/* 8062AF8C  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062AF90  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062AF94  40 82 00 10 */	bne lbl_8062AFA4
/* 8062AF98  A8 03 10 7E */	lha r0, 0x107e(r3)
/* 8062AF9C  7C 00 07 35 */	extsh. r0, r0
/* 8062AFA0  41 82 00 20 */	beq lbl_8062AFC0
lbl_8062AFA4:
/* 8062AFA4  7F C3 F3 78 */	mr r3, r30
/* 8062AFA8  38 9E 1D A8 */	addi r4, r30, 0x1da8
/* 8062AFAC  4B D4 A2 55 */	bl Actor_info_draw_actor
/* 8062AFB0  7F C3 F3 78 */	mr r3, r30
/* 8062AFB4  4B D5 83 AD */	bl Camera2_draw
/* 8062AFB8  7F C3 F3 78 */	mr r3, r30
/* 8062AFBC  4B D9 46 C1 */	bl mMsg_Draw
lbl_8062AFC0:
/* 8062AFC0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062AFC4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062AFC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8062AFCC  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062AFD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062AFD4  40 82 00 10 */	bne lbl_8062AFE4
/* 8062AFD8  A8 03 10 8E */	lha r0, 0x108e(r3)
/* 8062AFDC  7C 00 07 35 */	extsh. r0, r0
/* 8062AFE0  41 82 00 0C */	beq lbl_8062AFEC
lbl_8062AFE4:
/* 8062AFE4  7F C3 F3 78 */	mr r3, r30
/* 8062AFE8  4B D6 B1 85 */	bl Debug_Display_output
lbl_8062AFEC:
/* 8062AFEC  80 1E 1D EC */	lwz r0, 0x1dec(r30)
/* 8062AFF0  2C 00 00 01 */	cmpwi r0, 1
/* 8062AFF4  41 82 00 10 */	beq lbl_8062B004
/* 8062AFF8  88 1E 20 D2 */	lbz r0, 0x20d2(r30)
/* 8062AFFC  28 00 00 01 */	cmplwi r0, 1
/* 8062B000  40 82 00 B0 */	bne lbl_8062B0B0
lbl_8062B004:
/* 8062B004  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 8062B008  7F A3 EB 78 */	mr r3, r29
/* 8062B00C  4B DD A3 BD */	bl func_804053C8
/* 8062B010  90 61 00 08 */	stw r3, 8(r1)
/* 8062B014  3C 60 81 23 */	lis r3, prbuf@ha /* 0x81233B98@ha */
/* 8062B018  38 83 3B 98 */	addi r4, r3, prbuf@l /* 0x81233B98@l */
/* 8062B01C  3C 00 DE 00 */	lis r0, 0xde00
/* 8062B020  80 DF 03 10 */	lwz r6, 0x310(r31)
/* 8062B024  38 61 00 08 */	addi r3, r1, 8
/* 8062B028  38 A6 00 08 */	addi r5, r6, 8
/* 8062B02C  90 BF 03 10 */	stw r5, 0x310(r31)
/* 8062B030  90 06 00 00 */	stw r0, 0(r6)
/* 8062B034  80 01 00 08 */	lwz r0, 8(r1)
/* 8062B038  90 06 00 04 */	stw r0, 4(r6)
/* 8062B03C  4B FF FC 55 */	bl copy_efb_to_texture
/* 8062B040  80 C1 00 08 */	lwz r6, 8(r1)
/* 8062B044  3C 80 DF 00 */	lis r4, 0xdf00
/* 8062B048  38 00 00 00 */	li r0, 0
/* 8062B04C  7F A3 EB 78 */	mr r3, r29
/* 8062B050  38 A6 00 08 */	addi r5, r6, 8
/* 8062B054  90 A1 00 08 */	stw r5, 8(r1)
/* 8062B058  90 86 00 00 */	stw r4, 0(r6)
/* 8062B05C  90 06 00 04 */	stw r0, 4(r6)
/* 8062B060  80 81 00 08 */	lwz r4, 8(r1)
/* 8062B064  4B DD A3 6D */	bl gfxclose
/* 8062B068  80 01 00 08 */	lwz r0, 8(r1)
/* 8062B06C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8062B070  80 1E 1D EC */	lwz r0, 0x1dec(r30)
/* 8062B074  2C 00 00 01 */	cmpwi r0, 1
/* 8062B078  40 82 00 28 */	bne lbl_8062B0A0
/* 8062B07C  38 00 00 02 */	li r0, 2
/* 8062B080  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062B084  90 1E 1D EC */	stw r0, 0x1dec(r30)
/* 8062B088  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062B08C  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B090  A8 03 00 DA */	lha r0, 0xda(r3)
/* 8062B094  7C 00 00 D0 */	neg r0, r0
/* 8062B098  B0 03 00 DA */	sth r0, 0xda(r3)
/* 8062B09C  48 00 00 0C */	b lbl_8062B0A8
lbl_8062B0A0:
/* 8062B0A0  38 00 00 02 */	li r0, 2
/* 8062B0A4  98 1E 20 D2 */	stb r0, 0x20d2(r30)
lbl_8062B0A8:
/* 8062B0A8  38 60 00 01 */	li r3, 1
/* 8062B0AC  48 00 00 08 */	b lbl_8062B0B4
lbl_8062B0B0:
/* 8062B0B0  38 60 00 01 */	li r3, 1
lbl_8062B0B4:
/* 8062B0B4  39 61 01 60 */	addi r11, r1, 0x160
/* 8062B0B8  4B A6 FE 65 */	bl func_8009AF1C
/* 8062B0BC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8062B0C0  7C 08 03 A6 */	mtlr r0
/* 8062B0C4  38 21 01 60 */	addi r1, r1, 0x160
/* 8062B0C8  4E 80 00 20 */	blr 
