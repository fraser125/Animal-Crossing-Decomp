lbl_8038BD48:
/* 8038BD48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038BD4C  7C 08 02 A6 */	mflr r0
/* 8038BD50  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038BD54  39 61 00 50 */	addi r11, r1, 0x50
/* 8038BD58  4B D0 F1 75 */	bl func_8009AECC
/* 8038BD5C  7C 9C 23 78 */	mr r28, r4
/* 8038BD60  7C 7B 1B 78 */	mr r27, r3
/* 8038BD64  80 64 00 28 */	lwz r3, 0x28(r4)
/* 8038BD68  7C BD 2B 78 */	mr r29, r5
/* 8038BD6C  7C DE 33 78 */	mr r30, r6
/* 8038BD70  7C FF 3B 78 */	mr r31, r7
/* 8038BD74  28 03 00 00 */	cmplwi r3, 0
/* 8038BD78  40 82 01 10 */	bne lbl_8038BE88
/* 8038BD7C  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 8038BD80  28 00 00 01 */	cmplwi r0, 1
/* 8038BD84  40 82 01 04 */	bne lbl_8038BE88
/* 8038BD88  80 7D 00 00 */	lwz r3, 0(r29)
/* 8038BD8C  4B FF F8 21 */	bl mCoBG_SearchSlateDetail
/* 8038BD90  38 00 00 06 */	li r0, 6
/* 8038BD94  38 C1 00 04 */	addi r6, r1, 4
/* 8038BD98  38 BD FF FC */	addi r5, r29, -4
/* 8038BD9C  7C 09 03 A6 */	mtctr r0
lbl_8038BDA0:
/* 8038BDA0  80 85 00 04 */	lwz r4, 4(r5)
/* 8038BDA4  84 05 00 08 */	lwzu r0, 8(r5)
/* 8038BDA8  90 86 00 04 */	stw r4, 4(r6)
/* 8038BDAC  94 06 00 08 */	stwu r0, 8(r6)
/* 8038BDB0  42 00 FF F0 */	bdnz lbl_8038BDA0
/* 8038BDB4  7F C0 07 34 */	extsh r0, r30
/* 8038BDB8  2C 00 00 02 */	cmpwi r0, 2
/* 8038BDBC  41 82 00 6C */	beq lbl_8038BE28
/* 8038BDC0  40 80 00 14 */	bge lbl_8038BDD4
/* 8038BDC4  2C 00 00 00 */	cmpwi r0, 0
/* 8038BDC8  41 82 00 18 */	beq lbl_8038BDE0
/* 8038BDCC  40 80 00 38 */	bge lbl_8038BE04
/* 8038BDD0  48 00 00 9C */	b lbl_8038BE6C
lbl_8038BDD4:
/* 8038BDD4  2C 00 00 04 */	cmpwi r0, 4
/* 8038BDD8  40 80 00 94 */	bge lbl_8038BE6C
/* 8038BDDC  48 00 00 70 */	b lbl_8038BE4C
lbl_8038BDE0:
/* 8038BDE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BDE4  28 00 00 04 */	cmplwi r0, 4
/* 8038BDE8  40 82 00 10 */	bne lbl_8038BDF8
/* 8038BDEC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038BDF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038BDF4  48 00 00 78 */	b lbl_8038BE6C
lbl_8038BDF8:
/* 8038BDF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038BDFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038BE00  48 00 00 6C */	b lbl_8038BE6C
lbl_8038BE04:
/* 8038BE04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BE08  28 00 00 04 */	cmplwi r0, 4
/* 8038BE0C  40 82 00 10 */	bne lbl_8038BE1C
/* 8038BE10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038BE14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038BE18  48 00 00 54 */	b lbl_8038BE6C
lbl_8038BE1C:
/* 8038BE1C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8038BE20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038BE24  48 00 00 48 */	b lbl_8038BE6C
lbl_8038BE28:
/* 8038BE28  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BE2C  28 00 00 04 */	cmplwi r0, 4
/* 8038BE30  40 82 00 10 */	bne lbl_8038BE40
/* 8038BE34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038BE38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038BE3C  48 00 00 30 */	b lbl_8038BE6C
lbl_8038BE40:
/* 8038BE40  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8038BE44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038BE48  48 00 00 24 */	b lbl_8038BE6C
lbl_8038BE4C:
/* 8038BE4C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BE50  28 00 00 04 */	cmplwi r0, 4
/* 8038BE54  40 82 00 10 */	bne lbl_8038BE64
/* 8038BE58  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038BE5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038BE60  48 00 00 0C */	b lbl_8038BE6C
lbl_8038BE64:
/* 8038BE64  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038BE68  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_8038BE6C:
/* 8038BE6C  7F 63 DB 78 */	mr r3, r27
/* 8038BE70  7F 84 E3 78 */	mr r4, r28
/* 8038BE74  7F C6 F3 78 */	mr r6, r30
/* 8038BE78  7F E7 FB 78 */	mr r7, r31
/* 8038BE7C  38 A1 00 08 */	addi r5, r1, 8
/* 8038BE80  4B FF FB FD */	bl mCoBG_UtInf2NormalWallVector
/* 8038BE84  48 00 01 14 */	b lbl_8038BF98
lbl_8038BE88:
/* 8038BE88  28 03 00 01 */	cmplwi r3, 1
/* 8038BE8C  40 82 01 0C */	bne lbl_8038BF98
/* 8038BE90  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 8038BE94  28 00 00 00 */	cmplwi r0, 0
/* 8038BE98  40 82 01 00 */	bne lbl_8038BF98
/* 8038BE9C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038BEA0  4B FF F7 0D */	bl mCoBG_SearchSlateDetail
/* 8038BEA4  38 00 00 06 */	li r0, 6
/* 8038BEA8  38 C1 00 04 */	addi r6, r1, 4
/* 8038BEAC  38 BC FF FC */	addi r5, r28, -4
/* 8038BEB0  7C 09 03 A6 */	mtctr r0
lbl_8038BEB4:
/* 8038BEB4  80 85 00 04 */	lwz r4, 4(r5)
/* 8038BEB8  84 05 00 08 */	lwzu r0, 8(r5)
/* 8038BEBC  90 86 00 04 */	stw r4, 4(r6)
/* 8038BEC0  94 06 00 08 */	stwu r0, 8(r6)
/* 8038BEC4  42 00 FF F0 */	bdnz lbl_8038BEB4
/* 8038BEC8  7F C0 07 34 */	extsh r0, r30
/* 8038BECC  2C 00 00 02 */	cmpwi r0, 2
/* 8038BED0  41 82 00 6C */	beq lbl_8038BF3C
/* 8038BED4  40 80 00 14 */	bge lbl_8038BEE8
/* 8038BED8  2C 00 00 00 */	cmpwi r0, 0
/* 8038BEDC  41 82 00 18 */	beq lbl_8038BEF4
/* 8038BEE0  40 80 00 38 */	bge lbl_8038BF18
/* 8038BEE4  48 00 00 9C */	b lbl_8038BF80
lbl_8038BEE8:
/* 8038BEE8  2C 00 00 04 */	cmpwi r0, 4
/* 8038BEEC  40 80 00 94 */	bge lbl_8038BF80
/* 8038BEF0  48 00 00 70 */	b lbl_8038BF60
lbl_8038BEF4:
/* 8038BEF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BEF8  28 00 00 04 */	cmplwi r0, 4
/* 8038BEFC  40 82 00 10 */	bne lbl_8038BF0C
/* 8038BF00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038BF04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038BF08  48 00 00 78 */	b lbl_8038BF80
lbl_8038BF0C:
/* 8038BF0C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8038BF10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038BF14  48 00 00 6C */	b lbl_8038BF80
lbl_8038BF18:
/* 8038BF18  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BF1C  28 00 00 04 */	cmplwi r0, 4
/* 8038BF20  40 82 00 10 */	bne lbl_8038BF30
/* 8038BF24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038BF28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038BF2C  48 00 00 54 */	b lbl_8038BF80
lbl_8038BF30:
/* 8038BF30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038BF34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038BF38  48 00 00 48 */	b lbl_8038BF80
lbl_8038BF3C:
/* 8038BF3C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BF40  28 00 00 04 */	cmplwi r0, 4
/* 8038BF44  40 82 00 10 */	bne lbl_8038BF54
/* 8038BF48  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038BF4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038BF50  48 00 00 30 */	b lbl_8038BF80
lbl_8038BF54:
/* 8038BF54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038BF58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038BF5C  48 00 00 24 */	b lbl_8038BF80
lbl_8038BF60:
/* 8038BF60  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038BF64  28 00 00 04 */	cmplwi r0, 4
/* 8038BF68  40 82 00 10 */	bne lbl_8038BF78
/* 8038BF6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8038BF70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038BF74  48 00 00 0C */	b lbl_8038BF80
lbl_8038BF78:
/* 8038BF78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038BF7C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_8038BF80:
/* 8038BF80  7F 63 DB 78 */	mr r3, r27
/* 8038BF84  7F A5 EB 78 */	mr r5, r29
/* 8038BF88  7F C6 F3 78 */	mr r6, r30
/* 8038BF8C  7F E7 FB 78 */	mr r7, r31
/* 8038BF90  38 81 00 08 */	addi r4, r1, 8
/* 8038BF94  4B FF FA E9 */	bl mCoBG_UtInf2NormalWallVector
lbl_8038BF98:
/* 8038BF98  39 61 00 50 */	addi r11, r1, 0x50
/* 8038BF9C  4B D0 EF 7D */	bl func_8009AF18
/* 8038BFA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038BFA4  7C 08 03 A6 */	mtlr r0
/* 8038BFA8  38 21 00 50 */	addi r1, r1, 0x50
/* 8038BFAC  4E 80 00 20 */	blr 
