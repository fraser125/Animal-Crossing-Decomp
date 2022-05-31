lbl_803AB70C:
/* 803AB70C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AB710  7C 08 02 A6 */	mflr r0
/* 803AB714  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AB718  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB71C  4B CE F7 B1 */	bl func_8009AECC
/* 803AB720  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AB724  7C 7B 1B 78 */	mr r27, r3
/* 803AB728  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803AB72C  3B A0 00 00 */	li r29, 0
/* 803AB730  3B E0 00 00 */	li r31, 0
lbl_803AB734:
/* 803AB734  7C 9E FA 14 */	add r4, r30, r31
/* 803AB738  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803AB73C  3F 84 00 02 */	addis r28, r4, 2
/* 803AB740  88 9B 00 02 */	lbz r4, 2(r27)
/* 803AB744  88 BB 00 03 */	lbz r5, 3(r27)
/* 803AB748  A0 DC 3E 82 */	lhz r6, 0x3e82(r28)
/* 803AB74C  88 FC 3E 81 */	lbz r7, 0x3e81(r28)
/* 803AB750  89 1C 3E 7F */	lbz r8, 0x3e7f(r28)
/* 803AB754  3B 9C 3E 68 */	addi r28, r28, 0x3e68
/* 803AB758  48 05 B0 95 */	bl lbRTC_IsEqualDate
/* 803AB75C  2C 03 00 00 */	cmpwi r3, 0
/* 803AB760  40 82 00 0C */	bne lbl_803AB76C
/* 803AB764  7F 83 E3 78 */	mr r3, r28
/* 803AB768  48 00 00 18 */	b lbl_803AB780
lbl_803AB76C:
/* 803AB76C  3B BD 00 01 */	addi r29, r29, 1
/* 803AB770  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AB774  2C 1D 00 05 */	cmpwi r29, 5
/* 803AB778  41 80 FF BC */	blt lbl_803AB734
/* 803AB77C  38 60 00 00 */	li r3, 0
lbl_803AB780:
/* 803AB780  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB784  4B CE F7 95 */	bl func_8009AF18
/* 803AB788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AB78C  7C 08 03 A6 */	mtlr r0
/* 803AB790  38 21 00 20 */	addi r1, r1, 0x20
/* 803AB794  4E 80 00 20 */	blr 
