lbl_803AB7D4:
/* 803AB7D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AB7D8  7C 08 02 A6 */	mflr r0
/* 803AB7DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AB7E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB7E4  4B CE F6 E9 */	bl func_8009AECC
/* 803AB7E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AB7EC  3B A0 00 01 */	li r29, 1
/* 803AB7F0  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AB7F4  3B E0 00 20 */	li r31, 0x20
/* 803AB7F8  3F 7E 00 02 */	addis r27, r30, 2
/* 803AB7FC  3B 7B 3E 68 */	addi r27, r27, 0x3e68
lbl_803AB800:
/* 803AB800  7C 9E FA 14 */	add r4, r30, r31
/* 803AB804  A0 7B 00 1A */	lhz r3, 0x1a(r27)
/* 803AB808  3F 84 00 02 */	addis r28, r4, 2
/* 803AB80C  88 9B 00 19 */	lbz r4, 0x19(r27)
/* 803AB810  88 BB 00 17 */	lbz r5, 0x17(r27)
/* 803AB814  A0 DC 3E 82 */	lhz r6, 0x3e82(r28)
/* 803AB818  88 FC 3E 81 */	lbz r7, 0x3e81(r28)
/* 803AB81C  89 1C 3E 7F */	lbz r8, 0x3e7f(r28)
/* 803AB820  3B 9C 3E 68 */	addi r28, r28, 0x3e68
/* 803AB824  48 05 AF C9 */	bl lbRTC_IsEqualDate
/* 803AB828  2C 03 00 01 */	cmpwi r3, 1
/* 803AB82C  40 82 00 08 */	bne lbl_803AB834
/* 803AB830  7F 9B E3 78 */	mr r27, r28
lbl_803AB834:
/* 803AB834  3B BD 00 01 */	addi r29, r29, 1
/* 803AB838  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AB83C  2C 1D 00 05 */	cmpwi r29, 5
/* 803AB840  41 80 FF C0 */	blt lbl_803AB800
/* 803AB844  7F 63 DB 78 */	mr r3, r27
/* 803AB848  4B FF FD 69 */	bl func_803AB5B0
/* 803AB84C  7F 63 DB 78 */	mr r3, r27
/* 803AB850  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB854  4B CE F6 C5 */	bl func_8009AF18
/* 803AB858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AB85C  7C 08 03 A6 */	mtlr r0
/* 803AB860  38 21 00 20 */	addi r1, r1, 0x20
/* 803AB864  4E 80 00 20 */	blr 
