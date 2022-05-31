lbl_803CC810:
/* 803CC810  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803CC814  7C 08 02 A6 */	mflr r0
/* 803CC818  90 01 00 64 */	stw r0, 0x64(r1)
/* 803CC81C  39 61 00 60 */	addi r11, r1, 0x60
/* 803CC820  4B CC E6 81 */	bl func_8009AEA0
/* 803CC824  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 803CC828  7C BD 2B 78 */	mr r29, r5
/* 803CC82C  38 A8 85 38 */	addi r5, r8, common_data@l /* 0x81138538@l */
/* 803CC830  7C 9C 23 78 */	mr r28, r4
/* 803CC834  3F 25 00 01 */	addis r25, r5, 1
/* 803CC838  2C 1D 00 FF */	cmpwi r29, 0xff
/* 803CC83C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803CC840  8A A5 00 18 */	lbz r21, 0x18(r5)
/* 803CC844  3B 39 74 38 */	addi r25, r25, 0x7438
/* 803CC848  7C 7B 1B 78 */	mr r27, r3
/* 803CC84C  7C DE 33 78 */	mr r30, r6
/* 803CC850  7C FF 3B 78 */	mr r31, r7
/* 803CC854  7F 37 CB 78 */	mr r23, r25
/* 803CC858  7F 93 E3 78 */	mr r19, r28
/* 803CC85C  3A 44 FF FF */	addi r18, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803CC860  3A C0 00 00 */	li r22, 0
/* 803CC864  3A 80 00 00 */	li r20, 0
/* 803CC868  41 82 00 0C */	beq lbl_803CC874
/* 803CC86C  2C 1E 00 FF */	cmpwi r30, 0xff
/* 803CC870  40 82 00 08 */	bne lbl_803CC878
lbl_803CC874:
/* 803CC874  3B E0 00 00 */	li r31, 0
lbl_803CC878:
/* 803CC878  28 1B 00 00 */	cmplwi r27, 0
/* 803CC87C  40 82 00 10 */	bne lbl_803CC88C
/* 803CC880  2C 1C 00 00 */	cmpwi r28, 0
/* 803CC884  41 82 00 08 */	beq lbl_803CC88C
/* 803CC888  3B 80 00 00 */	li r28, 0
lbl_803CC88C:
/* 803CC88C  3A 20 00 00 */	li r17, 0
/* 803CC890  3A 00 00 00 */	li r16, 0
/* 803CC894  3B 40 00 01 */	li r26, 1
/* 803CC898  48 00 00 2C */	b lbl_803CC8C4
lbl_803CC89C:
/* 803CC89C  7C 7B 82 14 */	add r3, r27, r16
/* 803CC8A0  4B FF EB 3D */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CC8A4  2C 03 00 01 */	cmpwi r3, 1
/* 803CC8A8  40 82 00 14 */	bne lbl_803CC8BC
/* 803CC8AC  7F 40 88 30 */	slw r0, r26, r17
/* 803CC8B0  3A 73 FF FF */	addi r19, r19, -1
/* 803CC8B4  7E 40 00 78 */	andc r0, r18, r0
/* 803CC8B8  54 12 04 3E */	clrlwi r18, r0, 0x10
lbl_803CC8BC:
/* 803CC8BC  3A 31 00 01 */	addi r17, r17, 1
/* 803CC8C0  3A 10 00 0E */	addi r16, r16, 0xe
lbl_803CC8C4:
/* 803CC8C4  7C 11 E0 00 */	cmpw r17, r28
/* 803CC8C8  41 80 FF D4 */	blt lbl_803CC89C
/* 803CC8CC  2C 1F 00 01 */	cmpwi r31, 1
/* 803CC8D0  40 82 00 90 */	bne lbl_803CC960
/* 803CC8D4  3A 20 00 00 */	li r17, 0
lbl_803CC8D8:
/* 803CC8D8  88 17 08 99 */	lbz r0, 0x899(r23)
/* 803CC8DC  7C 00 E8 00 */	cmpw r0, r29
/* 803CC8E0  40 82 00 70 */	bne lbl_803CC950
/* 803CC8E4  88 17 08 9A */	lbz r0, 0x89a(r23)
/* 803CC8E8  7C 00 F0 00 */	cmpw r0, r30
/* 803CC8EC  40 82 00 64 */	bne lbl_803CC950
/* 803CC8F0  56 5A 04 3E */	clrlwi r26, r18, 0x10
/* 803CC8F4  3B 00 00 00 */	li r24, 0
/* 803CC8F8  3A 00 00 00 */	li r16, 0
/* 803CC8FC  3A 94 00 01 */	addi r20, r20, 1
/* 803CC900  48 00 00 48 */	b lbl_803CC948
lbl_803CC904:
/* 803CC904  7F 40 C6 30 */	sraw r0, r26, r24
/* 803CC908  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803CC90C  2C 00 00 01 */	cmpwi r0, 1
/* 803CC910  40 82 00 30 */	bne lbl_803CC940
/* 803CC914  7E E3 BB 78 */	mr r3, r23
/* 803CC918  7C 9B 82 14 */	add r4, r27, r16
/* 803CC91C  4B FF EB 55 */	bl mNpc_CheckCmpAnimalPersonalID
/* 803CC920  2C 03 00 01 */	cmpwi r3, 1
/* 803CC924  40 82 00 1C */	bne lbl_803CC940
/* 803CC928  38 00 00 01 */	li r0, 1
/* 803CC92C  3A 73 FF FF */	addi r19, r19, -1
/* 803CC930  7C 00 C0 30 */	slw r0, r0, r24
/* 803CC934  7E 40 00 78 */	andc r0, r18, r0
/* 803CC938  54 12 04 3E */	clrlwi r18, r0, 0x10
/* 803CC93C  48 00 00 14 */	b lbl_803CC950
lbl_803CC940:
/* 803CC940  3B 18 00 01 */	addi r24, r24, 1
/* 803CC944  3A 10 00 0E */	addi r16, r16, 0xe
lbl_803CC948:
/* 803CC948  7C 18 E0 00 */	cmpw r24, r28
/* 803CC94C  41 80 FF B8 */	blt lbl_803CC904
lbl_803CC950:
/* 803CC950  3A 31 00 01 */	addi r17, r17, 1
/* 803CC954  3A F7 09 88 */	addi r23, r23, 0x988
/* 803CC958  2C 11 00 0F */	cmpwi r17, 0xf
/* 803CC95C  41 80 FF 7C */	blt lbl_803CC8D8
lbl_803CC960:
/* 803CC960  7C 13 A2 14 */	add r0, r19, r20
/* 803CC964  7C 15 00 00 */	cmpw r21, r0
/* 803CC968  40 81 01 18 */	ble lbl_803CCA80
/* 803CC96C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803CC970  40 80 01 10 */	bge lbl_803CCA80
/* 803CC974  4B C9 03 81 */	bl fqrand
/* 803CC978  7C 73 A8 50 */	subf r3, r19, r21
/* 803CC97C  3C 00 43 30 */	lis r0, 0x4330
/* 803CC980  7C 74 18 50 */	subf r3, r20, r3
/* 803CC984  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803CC988  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803CC98C  90 01 00 08 */	stw r0, 8(r1)
/* 803CC990  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803CC994  56 5A 04 3E */	clrlwi r26, r18, 0x10
/* 803CC998  90 61 00 0C */	stw r3, 0xc(r1)
/* 803CC99C  3B 00 00 00 */	li r24, 0
/* 803CC9A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803CC9A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803CC9A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CC9AC  FC 00 00 1E */	fctiwz f0, f0
/* 803CC9B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CC9B4  82 81 00 14 */	lwz r20, 0x14(r1)
lbl_803CC9B8:
/* 803CC9B8  7F 23 CB 78 */	mr r3, r25
/* 803CC9BC  3A A0 00 00 */	li r21, 0
/* 803CC9C0  3A 20 00 01 */	li r17, 1
/* 803CC9C4  4B FF EA 19 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CC9C8  2C 03 00 00 */	cmpwi r3, 0
/* 803CC9CC  40 82 00 A4 */	bne lbl_803CCA70
/* 803CC9D0  3A 00 00 00 */	li r16, 0
/* 803CC9D4  3A 40 00 00 */	li r18, 0
/* 803CC9D8  48 00 00 34 */	b lbl_803CCA0C
lbl_803CC9DC:
/* 803CC9DC  7F 40 86 30 */	sraw r0, r26, r16
/* 803CC9E0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803CC9E4  2C 00 00 01 */	cmpwi r0, 1
/* 803CC9E8  40 82 00 1C */	bne lbl_803CCA04
/* 803CC9EC  7F 23 CB 78 */	mr r3, r25
/* 803CC9F0  7C 9B 92 14 */	add r4, r27, r18
/* 803CC9F4  4B FF EA 7D */	bl mNpc_CheckCmpAnimalPersonalID
/* 803CC9F8  2C 03 00 00 */	cmpwi r3, 0
/* 803CC9FC  40 82 00 08 */	bne lbl_803CCA04
/* 803CCA00  3A B5 00 01 */	addi r21, r21, 1
lbl_803CCA04:
/* 803CCA04  3A 10 00 01 */	addi r16, r16, 1
/* 803CCA08  3A 52 00 0E */	addi r18, r18, 0xe
lbl_803CCA0C:
/* 803CCA0C  7C 10 E0 00 */	cmpw r16, r28
/* 803CCA10  41 80 FF CC */	blt lbl_803CC9DC
/* 803CCA14  7C 15 98 00 */	cmpw r21, r19
/* 803CCA18  41 82 00 0C */	beq lbl_803CCA24
/* 803CCA1C  3A 20 00 00 */	li r17, 0
/* 803CCA20  48 00 00 34 */	b lbl_803CCA54
lbl_803CCA24:
/* 803CCA24  2C 1F 00 01 */	cmpwi r31, 1
/* 803CCA28  40 82 00 2C */	bne lbl_803CCA54
/* 803CCA2C  88 19 08 99 */	lbz r0, 0x899(r25)
/* 803CCA30  7C 00 E8 00 */	cmpw r0, r29
/* 803CCA34  40 82 00 20 */	bne lbl_803CCA54
/* 803CCA38  88 19 08 9A */	lbz r0, 0x89a(r25)
/* 803CCA3C  7C 00 F0 00 */	cmpw r0, r30
/* 803CCA40  40 82 00 14 */	bne lbl_803CCA54
/* 803CCA44  2C 14 00 00 */	cmpwi r20, 0
/* 803CCA48  40 81 00 08 */	ble lbl_803CCA50
/* 803CCA4C  3A 94 FF FF */	addi r20, r20, -1
lbl_803CCA50:
/* 803CCA50  3A 20 00 00 */	li r17, 0
lbl_803CCA54:
/* 803CCA54  2C 11 00 01 */	cmpwi r17, 1
/* 803CCA58  40 82 00 18 */	bne lbl_803CCA70
/* 803CCA5C  2C 14 00 00 */	cmpwi r20, 0
/* 803CCA60  40 82 00 0C */	bne lbl_803CCA6C
/* 803CCA64  7F 36 CB 78 */	mr r22, r25
/* 803CCA68  48 00 00 18 */	b lbl_803CCA80
lbl_803CCA6C:
/* 803CCA6C  3A 94 FF FF */	addi r20, r20, -1
lbl_803CCA70:
/* 803CCA70  3B 18 00 01 */	addi r24, r24, 1
/* 803CCA74  3B 39 09 88 */	addi r25, r25, 0x988
/* 803CCA78  2C 18 00 0F */	cmpwi r24, 0xf
/* 803CCA7C  41 80 FF 3C */	blt lbl_803CC9B8
lbl_803CCA80:
/* 803CCA80  7E C3 B3 78 */	mr r3, r22
/* 803CCA84  39 61 00 60 */	addi r11, r1, 0x60
/* 803CCA88  4B CC E4 65 */	bl func_8009AEEC
/* 803CCA8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803CCA90  7C 08 03 A6 */	mtlr r0
/* 803CCA94  38 21 00 60 */	addi r1, r1, 0x60
/* 803CCA98  4E 80 00 20 */	blr 
