lbl_8039CA20:
/* 8039CA20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039CA24  7C 08 02 A6 */	mflr r0
/* 8039CA28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039CA2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8039CA30  4B CF E4 91 */	bl func_8009AEC0
/* 8039CA34  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039CA38  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039CA3C  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8039CA40  38 A0 00 01 */	li r5, 1
/* 8039CA44  3F A6 00 02 */	addis r29, r6, 2
/* 8039CA48  7C 79 1B 78 */	mr r25, r3
/* 8039CA4C  88 1D 61 22 */	lbz r0, 0x6122(r29)
/* 8039CA50  3F C6 00 03 */	addis r30, r6, 3
/* 8039CA54  3B E4 76 AC */	addi r31, r4, event_today@l /* 0x811676AC@l */
/* 8039CA58  3B 40 00 00 */	li r26, 0
/* 8039CA5C  7C BC 00 30 */	slw r28, r5, r0
/* 8039CA60  3B 00 00 00 */	li r24, 0
lbl_8039CA64:
/* 8039CA64  7F 7F C2 14 */	add r27, r31, r24
/* 8039CA68  80 7B 00 00 */	lwz r3, 0(r27)
/* 8039CA6C  2C 03 FF FF */	cmpwi r3, -1
/* 8039CA70  41 82 01 F0 */	beq lbl_8039CC60
/* 8039CA74  3C 80 81 16 */	lis r4, index_today@ha /* 0x811677AC@ha */
/* 8039CA78  38 84 77 AC */	addi r4, r4, index_today@l /* 0x811677AC@l */
/* 8039CA7C  7C 04 18 AE */	lbzx r0, r4, r3
/* 8039CA80  28 00 00 FF */	cmplwi r0, 0xff
/* 8039CA84  41 82 01 DC */	beq lbl_8039CC60
/* 8039CA88  38 80 00 20 */	li r4, 0x20
/* 8039CA8C  48 00 10 75 */	bl mEv_check_status
/* 8039CA90  2C 03 00 00 */	cmpwi r3, 0
/* 8039CA94  40 82 01 F4 */	bne lbl_8039CC88
/* 8039CA98  80 7B 00 00 */	lwz r3, 0(r27)
/* 8039CA9C  2C 03 00 10 */	cmpwi r3, 0x10
/* 8039CAA0  40 82 00 2C */	bne lbl_8039CACC
/* 8039CAA4  A8 1E 87 EE */	lha r0, -0x7812(r30)
/* 8039CAA8  7C 00 18 00 */	cmpw r0, r3
/* 8039CAAC  41 82 00 20 */	beq lbl_8039CACC
/* 8039CAB0  48 00 10 05 */	bl clear_active
/* 8039CAB4  2C 03 00 00 */	cmpwi r3, 0
/* 8039CAB8  41 82 01 D0 */	beq lbl_8039CC88
/* 8039CABC  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CAC0  38 03 00 01 */	addi r0, r3, 1
/* 8039CAC4  B0 19 00 06 */	sth r0, 6(r25)
/* 8039CAC8  48 00 01 C0 */	b lbl_8039CC88
lbl_8039CACC:
/* 8039CACC  80 9B 00 04 */	lwz r4, 4(r27)
/* 8039CAD0  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 8039CAD4  41 82 00 2C */	beq lbl_8039CB00
/* 8039CAD8  48 00 0F 51 */	bl set_active
/* 8039CADC  2C 03 00 00 */	cmpwi r3, 0
/* 8039CAE0  41 82 00 10 */	beq lbl_8039CAF0
/* 8039CAE4  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CAE8  38 03 00 01 */	addi r0, r3, 1
/* 8039CAEC  B0 19 00 06 */	sth r0, 6(r25)
lbl_8039CAF0:
/* 8039CAF0  80 1B 00 04 */	lwz r0, 4(r27)
/* 8039CAF4  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 8039CAF8  90 1B 00 04 */	stw r0, 4(r27)
/* 8039CAFC  48 00 01 64 */	b lbl_8039CC60
lbl_8039CB00:
/* 8039CB00  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8039CB04  41 80 00 44 */	blt lbl_8039CB48
/* 8039CB08  2C 03 00 4F */	cmpwi r3, 0x4f
/* 8039CB0C  41 81 00 3C */	bgt lbl_8039CB48
/* 8039CB10  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 8039CB14  7C 03 00 00 */	cmpw r3, r0
/* 8039CB18  40 82 00 30 */	bne lbl_8039CB48
/* 8039CB1C  48 00 0F 99 */	bl clear_active
/* 8039CB20  2C 03 00 00 */	cmpwi r3, 0
/* 8039CB24  41 82 00 10 */	beq lbl_8039CB34
/* 8039CB28  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CB2C  38 03 00 01 */	addi r0, r3, 1
/* 8039CB30  B0 19 00 06 */	sth r0, 6(r25)
lbl_8039CB34:
/* 8039CB34  38 60 00 00 */	li r3, 0
/* 8039CB38  3C 00 20 00 */	lis r0, 0x2000
/* 8039CB3C  90 7D 06 74 */	stw r3, 0x674(r29)
/* 8039CB40  90 1B 00 04 */	stw r0, 4(r27)
/* 8039CB44  48 00 01 1C */	b lbl_8039CC60
lbl_8039CB48:
/* 8039CB48  7C 80 E0 39 */	and. r0, r4, r28
/* 8039CB4C  41 82 00 84 */	beq lbl_8039CBD0
/* 8039CB50  A8 1E 87 EE */	lha r0, -0x7812(r30)
/* 8039CB54  2C 00 FF FF */	cmpwi r0, -1
/* 8039CB58  41 82 00 38 */	beq lbl_8039CB90
/* 8039CB5C  2C 03 00 0C */	cmpwi r3, 0xc
/* 8039CB60  41 82 00 14 */	beq lbl_8039CB74
/* 8039CB64  2C 03 00 0E */	cmpwi r3, 0xe
/* 8039CB68  41 82 00 0C */	beq lbl_8039CB74
/* 8039CB6C  2C 03 00 0F */	cmpwi r3, 0xf
/* 8039CB70  40 82 00 20 */	bne lbl_8039CB90
lbl_8039CB74:
/* 8039CB74  48 00 0F 41 */	bl clear_active
/* 8039CB78  2C 03 00 00 */	cmpwi r3, 0
/* 8039CB7C  41 82 01 0C */	beq lbl_8039CC88
/* 8039CB80  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CB84  38 03 00 01 */	addi r0, r3, 1
/* 8039CB88  B0 19 00 06 */	sth r0, 6(r25)
/* 8039CB8C  48 00 00 FC */	b lbl_8039CC88
lbl_8039CB90:
/* 8039CB90  2C 03 00 00 */	cmpwi r3, 0
/* 8039CB94  41 82 00 20 */	beq lbl_8039CBB4
/* 8039CB98  A8 1E 86 D0 */	lha r0, -0x7930(r30)
/* 8039CB9C  7C 03 00 00 */	cmpw r3, r0
/* 8039CBA0  40 82 00 14 */	bne lbl_8039CBB4
/* 8039CBA4  80 1B 00 04 */	lwz r0, 4(r27)
/* 8039CBA8  64 00 40 00 */	oris r0, r0, 0x4000
/* 8039CBAC  90 1B 00 04 */	stw r0, 4(r27)
/* 8039CBB0  48 00 00 B0 */	b lbl_8039CC60
lbl_8039CBB4:
/* 8039CBB4  48 00 0E 75 */	bl set_active
/* 8039CBB8  2C 03 00 00 */	cmpwi r3, 0
/* 8039CBBC  41 82 00 A4 */	beq lbl_8039CC60
/* 8039CBC0  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CBC4  38 03 00 01 */	addi r0, r3, 1
/* 8039CBC8  B0 19 00 06 */	sth r0, 6(r25)
/* 8039CBCC  48 00 00 94 */	b lbl_8039CC60
lbl_8039CBD0:
/* 8039CBD0  38 80 00 51 */	li r4, 0x51
/* 8039CBD4  48 00 16 D9 */	bl mEv_get_common_place
/* 8039CBD8  80 BB 00 00 */	lwz r5, 0(r27)
/* 8039CBDC  2C 05 00 00 */	cmpwi r5, 0
/* 8039CBE0  41 82 00 1C */	beq lbl_8039CBFC
/* 8039CBE4  A8 1E 86 D0 */	lha r0, -0x7930(r30)
/* 8039CBE8  7C 05 00 00 */	cmpw r5, r0
/* 8039CBEC  40 82 00 10 */	bne lbl_8039CBFC
/* 8039CBF0  38 00 00 00 */	li r0, 0
/* 8039CBF4  B0 1E 86 D0 */	sth r0, -0x7930(r30)
/* 8039CBF8  48 00 00 68 */	b lbl_8039CC60
lbl_8039CBFC:
/* 8039CBFC  28 03 00 00 */	cmplwi r3, 0
/* 8039CC00  41 82 00 44 */	beq lbl_8039CC44
/* 8039CC04  80 83 00 04 */	lwz r4, 4(r3)
/* 8039CC08  80 19 00 0C */	lwz r0, 0xc(r25)
/* 8039CC0C  7C 04 00 00 */	cmpw r4, r0
/* 8039CC10  40 82 00 14 */	bne lbl_8039CC24
/* 8039CC14  80 63 00 00 */	lwz r3, 0(r3)
/* 8039CC18  80 19 00 08 */	lwz r0, 8(r25)
/* 8039CC1C  7C 03 00 00 */	cmpw r3, r0
/* 8039CC20  41 82 00 40 */	beq lbl_8039CC60
lbl_8039CC24:
/* 8039CC24  7C A3 2B 78 */	mr r3, r5
/* 8039CC28  48 00 0E 8D */	bl clear_active
/* 8039CC2C  2C 03 00 00 */	cmpwi r3, 0
/* 8039CC30  41 82 00 30 */	beq lbl_8039CC60
/* 8039CC34  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CC38  38 03 00 01 */	addi r0, r3, 1
/* 8039CC3C  B0 19 00 06 */	sth r0, 6(r25)
/* 8039CC40  48 00 00 20 */	b lbl_8039CC60
lbl_8039CC44:
/* 8039CC44  7C A3 2B 78 */	mr r3, r5
/* 8039CC48  48 00 0E 6D */	bl clear_active
/* 8039CC4C  2C 03 00 00 */	cmpwi r3, 0
/* 8039CC50  41 82 00 10 */	beq lbl_8039CC60
/* 8039CC54  A8 79 00 06 */	lha r3, 6(r25)
/* 8039CC58  38 03 00 01 */	addi r0, r3, 1
/* 8039CC5C  B0 19 00 06 */	sth r0, 6(r25)
lbl_8039CC60:
/* 8039CC60  80 1B 00 04 */	lwz r0, 4(r27)
/* 8039CC64  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8039CC68  41 82 00 20 */	beq lbl_8039CC88
/* 8039CC6C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8039CC70  38 80 00 10 */	li r4, 0x10
/* 8039CC74  48 00 0E 8D */	bl mEv_check_status
/* 8039CC78  2C 03 00 00 */	cmpwi r3, 0
/* 8039CC7C  40 82 00 0C */	bne lbl_8039CC88
/* 8039CC80  38 00 00 00 */	li r0, 0
/* 8039CC84  90 1B 00 04 */	stw r0, 4(r27)
lbl_8039CC88:
/* 8039CC88  3B 5A 00 01 */	addi r26, r26, 1
/* 8039CC8C  3B 18 00 10 */	addi r24, r24, 0x10
/* 8039CC90  2C 1A 00 10 */	cmpwi r26, 0x10
/* 8039CC94  41 80 FD D0 */	blt lbl_8039CA64
/* 8039CC98  48 00 18 15 */	bl mEv_clear_rumor
/* 8039CC9C  3C 80 80 65 */	lis r4, event_rumor_table@ha /* 0x80651E64@ha */
/* 8039CCA0  3C 60 80 65 */	lis r3, n_event_rumors@ha /* 0x80651EC8@ha */
/* 8039CCA4  3B 44 1E 64 */	addi r26, r4, event_rumor_table@l /* 0x80651E64@l */
/* 8039CCA8  3B 60 00 00 */	li r27, 0
/* 8039CCAC  3B 03 1E C8 */	addi r24, r3, n_event_rumors@l /* 0x80651EC8@l */
/* 8039CCB0  3B 20 00 00 */	li r25, 0
/* 8039CCB4  48 00 00 28 */	b lbl_8039CCDC
lbl_8039CCB8:
/* 8039CCB8  7C 7A C8 2E */	lwzx r3, r26, r25
/* 8039CCBC  38 80 00 01 */	li r4, 1
/* 8039CCC0  48 00 0E 41 */	bl mEv_check_status
/* 8039CCC4  2C 03 00 00 */	cmpwi r3, 0
/* 8039CCC8  41 82 00 0C */	beq lbl_8039CCD4
/* 8039CCCC  7F 63 DB 78 */	mr r3, r27
/* 8039CCD0  48 00 17 ED */	bl mEv_spread_rumor
lbl_8039CCD4:
/* 8039CCD4  3B 7B 00 01 */	addi r27, r27, 1
/* 8039CCD8  3B 39 00 04 */	addi r25, r25, 4
lbl_8039CCDC:
/* 8039CCDC  80 18 00 00 */	lwz r0, 0(r24)
/* 8039CCE0  7C 1B 00 00 */	cmpw r27, r0
/* 8039CCE4  41 80 FF D4 */	blt lbl_8039CCB8
/* 8039CCE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8039CCEC  4B CF E2 21 */	bl func_8009AF0C
/* 8039CCF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039CCF4  7C 08 03 A6 */	mtlr r0
/* 8039CCF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8039CCFC  4E 80 00 20 */	blr 
