lbl_8046E1B0:
/* 8046E1B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046E1B4  7C 08 02 A6 */	mflr r0
/* 8046E1B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046E1BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8046E1C0  4B C2 CD 0D */	bl func_8009AECC
/* 8046E1C4  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8046E1C8  7C 7E 1B 78 */	mr r30, r3
/* 8046E1CC  38 A5 61 38 */	addi r5, r5, debug_mode@l /* 0x81166138@l */
/* 8046E1D0  7C 9F 23 78 */	mr r31, r4
/* 8046E1D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8046E1D8  A8 05 16 9E */	lha r0, 0x169e(r5)
/* 8046E1DC  2C 00 00 00 */	cmpwi r0, 0
/* 8046E1E0  41 82 00 08 */	beq lbl_8046E1E8
/* 8046E1E4  4B FF F4 E5 */	bl okera_dig_up_process_init
lbl_8046E1E8:
/* 8046E1E8  A8 9E 00 6E */	lha r4, 0x6e(r30)
/* 8046E1EC  38 64 FF FF */	addi r3, r4, -1
/* 8046E1F0  7C 80 07 35 */	extsh. r0, r4
/* 8046E1F4  B0 7E 00 6E */	sth r3, 0x6e(r30)
/* 8046E1F8  40 80 00 7C */	bge lbl_8046E274
/* 8046E1FC  7F C3 F3 78 */	mr r3, r30
/* 8046E200  7F E4 FB 78 */	mr r4, r31
/* 8046E204  4B FF F4 C5 */	bl okera_dig_up_process_init
/* 8046E208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046E20C  3B 60 00 03 */	li r27, 3
/* 8046E210  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046E214  3F A0 00 01 */	lis r29, 0x0001 /* 0x0000FFFF@ha */
/* 8046E218  3F 83 00 02 */	addis r28, r3, 2
lbl_8046E21C:
/* 8046E21C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8046E220  63 60 40 00 */	ori r0, r27, 0x4000
/* 8046E224  80 BE 00 20 */	lwz r5, 0x20(r30)
/* 8046E228  7F E7 FB 78 */	mr r7, r31
/* 8046E22C  80 DC 60 9C */	lwz r6, 0x609c(r28)
/* 8046E230  38 81 00 08 */	addi r4, r1, 8
/* 8046E234  90 61 00 08 */	stw r3, 8(r1)
/* 8046E238  39 1D FF FF */	addi r8, r29, 0xFFFF /* 0x0000FFFF@l */
/* 8046E23C  7C 0A 07 34 */	extsh r10, r0
/* 8046E240  38 60 00 54 */	li r3, 0x54
/* 8046E244  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8046E248  38 A0 00 02 */	li r5, 2
/* 8046E24C  39 20 00 00 */	li r9, 0
/* 8046E250  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8046E254  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046E258  81 86 00 00 */	lwz r12, 0(r6)
/* 8046E25C  A8 DE 00 6A */	lha r6, 0x6a(r30)
/* 8046E260  7D 89 03 A6 */	mtctr r12
/* 8046E264  4E 80 04 21 */	bctrl 
/* 8046E268  3B 7B 00 01 */	addi r27, r27, 1
/* 8046E26C  2C 1B 00 06 */	cmpwi r27, 6
/* 8046E270  41 80 FF AC */	blt lbl_8046E21C
lbl_8046E274:
/* 8046E274  39 61 00 30 */	addi r11, r1, 0x30
/* 8046E278  4B C2 CC A1 */	bl func_8009AF18
/* 8046E27C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046E280  7C 08 03 A6 */	mtlr r0
/* 8046E284  38 21 00 30 */	addi r1, r1, 0x30
/* 8046E288  4E 80 00 20 */	blr 
