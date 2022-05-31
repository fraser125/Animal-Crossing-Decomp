lbl_804CDD44:
/* 804CDD44  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804CDD48  7C 08 02 A6 */	mflr r0
/* 804CDD4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CDD50  39 61 00 50 */	addi r11, r1, 0x50
/* 804CDD54  4B BC D1 51 */	bl func_8009AEA4
/* 804CDD58  3D 60 81 1D */	lis r11, data_811D0840@ha /* 0x811D0840@ha */
/* 804CDD5C  3D 80 80 6A */	lis r12, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CDD60  3B CB 08 40 */	addi r30, r11, data_811D0840@l /* 0x811D0840@l */
/* 804CDD64  7D 37 4B 78 */	mr r23, r9
/* 804CDD68  7C 72 1B 78 */	mr r18, r3
/* 804CDD6C  AB 21 00 5A */	lha r25, 0x5a(r1)
/* 804CDD70  7C 93 23 78 */	mr r19, r4
/* 804CDD74  7C BB 2B 78 */	mr r27, r5
/* 804CDD78  7C D4 33 78 */	mr r20, r6
/* 804CDD7C  7C F5 3B 78 */	mr r21, r7
/* 804CDD80  7D 16 43 78 */	mr r22, r8
/* 804CDD84  7D 58 53 78 */	mr r24, r10
/* 804CDD88  7E E3 BB 78 */	mr r3, r23
/* 804CDD8C  3B AC BC 10 */	addi r29, r12, data_8069BC10@l /* 0x8069BC10@l */
/* 804CDD90  3B 5E 01 D4 */	addi r26, r30, 0x1d4
/* 804CDD94  3A 3E 24 34 */	addi r17, r30, 0x2434
/* 804CDD98  3B 80 00 00 */	li r28, 0
/* 804CDD9C  4B FF FE 7D */	bl eEC_GetEffectBuff
/* 804CDDA0  7C 7F 1B 78 */	mr r31, r3
/* 804CDDA4  2C 1F FF FF */	cmpwi r31, -1
/* 804CDDA8  41 82 00 C8 */	beq lbl_804CDE70
/* 804CDDAC  1F 9F 00 58 */	mulli r28, r31, 0x58
/* 804CDDB0  7F 64 DB 78 */	mr r4, r27
/* 804CDDB4  7E F1 F9 AE */	stbx r23, r17, r31
/* 804CDDB8  38 00 00 00 */	li r0, 0
/* 804CDDBC  80 F3 00 00 */	lwz r7, 0(r19)
/* 804CDDC0  7F 7A E2 14 */	add r27, r26, r28
/* 804CDDC4  B2 5B 00 02 */	sth r18, 2(r27)
/* 804CDDC8  7F 63 DB 78 */	mr r3, r27
/* 804CDDCC  80 D3 00 04 */	lwz r6, 4(r19)
/* 804CDDD0  90 FB 00 10 */	stw r7, 0x10(r27)
/* 804CDDD4  80 B3 00 08 */	lwz r5, 8(r19)
/* 804CDDD8  90 DB 00 14 */	stw r6, 0x14(r27)
/* 804CDDDC  90 BB 00 18 */	stw r5, 0x18(r27)
/* 804CDDE0  B2 DB 00 0C */	sth r22, 0xc(r27)
/* 804CDDE4  9A FB 00 0E */	stb r23, 0xe(r27)
/* 804CDDE8  98 1B 00 0F */	stb r0, 0xf(r27)
/* 804CDDEC  4B FF FF 15 */	bl eEC_SetFirstOffset
/* 804CDDF0  38 60 00 0A */	li r3, 0xa
/* 804CDDF4  7E 40 07 34 */	extsh r0, r18
/* 804CDDF8  B0 7B 00 00 */	sth r3, 0(r27)
/* 804CDDFC  54 00 10 3A */	slwi r0, r0, 2
/* 804CDE00  80 FD 02 A8 */	lwz r7, 0x2a8(r29)
/* 804CDE04  38 DD 00 00 */	addi r6, r29, 0
/* 804CDE08  81 7D 02 AC */	lwz r11, 0x2ac(r29)
/* 804CDE0C  7F 63 DB 78 */	mr r3, r27
/* 804CDE10  90 FB 00 1C */	stw r7, 0x1c(r27)
/* 804CDE14  7E 84 A3 78 */	mr r4, r20
/* 804CDE18  81 5D 02 B0 */	lwz r10, 0x2b0(r29)
/* 804CDE1C  7E A5 AB 78 */	mr r5, r21
/* 804CDE20  91 7B 00 20 */	stw r11, 0x20(r27)
/* 804CDE24  81 3D 02 B4 */	lwz r9, 0x2b4(r29)
/* 804CDE28  91 5B 00 24 */	stw r10, 0x24(r27)
/* 804CDE2C  81 1D 02 B8 */	lwz r8, 0x2b8(r29)
/* 804CDE30  90 FB 00 28 */	stw r7, 0x28(r27)
/* 804CDE34  80 FD 02 BC */	lwz r7, 0x2bc(r29)
/* 804CDE38  91 7B 00 2C */	stw r11, 0x2c(r27)
/* 804CDE3C  7C C6 00 2E */	lwzx r6, r6, r0
/* 804CDE40  91 5B 00 30 */	stw r10, 0x30(r27)
/* 804CDE44  91 3B 00 34 */	stw r9, 0x34(r27)
/* 804CDE48  91 1B 00 38 */	stw r8, 0x38(r27)
/* 804CDE4C  90 FB 00 3C */	stw r7, 0x3c(r27)
/* 804CDE50  B3 1B 00 06 */	sth r24, 6(r27)
/* 804CDE54  B3 3B 00 08 */	sth r25, 8(r27)
/* 804CDE58  81 86 00 04 */	lwz r12, 4(r6)
/* 804CDE5C  7D 89 03 A6 */	mtctr r12
/* 804CDE60  4E 80 04 21 */	bctrl 
/* 804CDE64  38 1F 00 01 */	addi r0, r31, 1
/* 804CDE68  7F 7C DB 78 */	mr r28, r27
/* 804CDE6C  90 1E 01 D0 */	stw r0, 0x1d0(r30)
lbl_804CDE70:
/* 804CDE70  7F 83 E3 78 */	mr r3, r28
/* 804CDE74  39 61 00 50 */	addi r11, r1, 0x50
/* 804CDE78  4B BC D0 79 */	bl func_8009AEF0
/* 804CDE7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804CDE80  7C 08 03 A6 */	mtlr r0
/* 804CDE84  38 21 00 50 */	addi r1, r1, 0x50
/* 804CDE88  4E 80 00 20 */	blr 
