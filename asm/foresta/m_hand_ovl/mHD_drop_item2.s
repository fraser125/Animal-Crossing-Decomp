lbl_805DDF44:
/* 805DDF44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DDF48  7C 08 02 A6 */	mflr r0
/* 805DDF4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DDF50  39 61 00 20 */	addi r11, r1, 0x20
/* 805DDF54  4B AB CF 79 */	bl func_8009AECC
/* 805DDF58  7C 7B 1B 78 */	mr r27, r3
/* 805DDF5C  7C BD 2B 78 */	mr r29, r5
/* 805DDF60  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DDF64  7C 9C 23 78 */	mr r28, r4
/* 805DDF68  A0 05 00 00 */	lhz r0, 0(r5)
/* 805DDF6C  7C DE 33 78 */	mr r30, r6
/* 805DDF70  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DDF74  28 00 00 00 */	cmplwi r0, 0
/* 805DDF78  80 DF 03 60 */	lwz r6, 0x360(r31)
/* 805DDF7C  41 82 00 2C */	beq lbl_805DDFA8
/* 805DDF80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DDF84  57 C0 08 3C */	slwi r0, r30, 1
/* 805DDF88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DDF8C  3C 63 00 02 */	addis r3, r3, 2
/* 805DDF90  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805DDF94  80 63 00 88 */	lwz r3, 0x88(r3)
/* 805DDF98  7C 60 04 30 */	srw r0, r3, r0
/* 805DDF9C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805DDFA0  90 1F 03 60 */	stw r0, 0x360(r31)
/* 805DDFA4  48 00 00 0C */	b lbl_805DDFB0
lbl_805DDFA8:
/* 805DDFA8  38 00 00 00 */	li r0, 0
/* 805DDFAC  90 1F 03 60 */	stw r0, 0x360(r31)
lbl_805DDFB0:
/* 805DDFB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DDFB4  57 C5 08 3C */	slwi r5, r30, 1
/* 805DDFB8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805DDFBC  38 60 00 03 */	li r3, 3
/* 805DDFC0  3C 84 00 02 */	addis r4, r4, 2
/* 805DDFC4  7C C0 28 30 */	slw r0, r6, r5
/* 805DDFC8  81 04 61 3C */	lwz r8, 0x613c(r4)
/* 805DDFCC  7C 66 28 30 */	slw r6, r3, r5
/* 805DDFD0  7F E3 FB 78 */	mr r3, r31
/* 805DDFD4  7F A4 EB 78 */	mr r4, r29
/* 805DDFD8  80 E8 00 88 */	lwz r7, 0x88(r8)
/* 805DDFDC  7F C5 F3 78 */	mr r5, r30
/* 805DDFE0  7C E6 30 78 */	andc r6, r7, r6
/* 805DDFE4  7C C0 03 78 */	or r0, r6, r0
/* 805DDFE8  90 08 00 88 */	stw r0, 0x88(r8)
/* 805DDFEC  4B FF FC 45 */	bl mHD_prepare_drop_ticket
/* 805DDFF0  7F E3 FB 78 */	mr r3, r31
/* 805DDFF4  7F A4 EB 78 */	mr r4, r29
/* 805DDFF8  7F C5 F3 78 */	mr r5, r30
/* 805DDFFC  4B FF FD 39 */	bl mHD_prepare_drop_wisp
/* 805DE000  7F E3 FB 78 */	mr r3, r31
/* 805DE004  7F A4 EB 78 */	mr r4, r29
/* 805DE008  7F C5 F3 78 */	mr r5, r30
/* 805DE00C  4B FF FE 25 */	bl mHD_prepare_drop_paper
/* 805DE010  7F 63 DB 78 */	mr r3, r27
/* 805DE014  7F 84 E3 78 */	mr r4, r28
/* 805DE018  7F A5 EB 78 */	mr r5, r29
/* 805DE01C  38 C0 00 00 */	li r6, 0
/* 805DE020  4B FF F7 49 */	bl mHD_drop_item
/* 805DE024  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE028  4B AB CE F1 */	bl func_8009AF18
/* 805DE02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE030  7C 08 03 A6 */	mtlr r0
/* 805DE034  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE038  4E 80 00 20 */	blr 
