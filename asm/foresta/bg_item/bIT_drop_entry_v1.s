lbl_804BA264:
/* 804BA264  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BA268  7C 08 02 A6 */	mflr r0
/* 804BA26C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BA270  39 61 00 40 */	addi r11, r1, 0x40
/* 804BA274  4B BE 0C 59 */	bl func_8009AECC
/* 804BA278  7C BF 2B 78 */	mr r31, r5
/* 804BA27C  7C 7B 1B 78 */	mr r27, r3
/* 804BA280  80 A5 00 00 */	lwz r5, 0(r5)
/* 804BA284  7C 9C 23 78 */	mr r28, r4
/* 804BA288  80 1F 00 04 */	lwz r0, 4(r31)
/* 804BA28C  38 61 00 14 */	addi r3, r1, 0x14
/* 804BA290  3B A0 00 00 */	li r29, 0
/* 804BA294  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804BA298  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BA29C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804BA2A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BA2A4  4B EE D1 8D */	bl mFI_GetUnitFG
/* 804BA2A8  7C 7E 1B 78 */	mr r30, r3
/* 804BA2AC  A0 03 00 00 */	lhz r0, 0(r3)
/* 804BA2B0  28 00 00 00 */	cmplwi r0, 0
/* 804BA2B4  41 82 00 1C */	beq lbl_804BA2D0
/* 804BA2B8  28 00 00 11 */	cmplwi r0, 0x11
/* 804BA2BC  41 80 00 0C */	blt lbl_804BA2C8
/* 804BA2C0  28 00 00 29 */	cmplwi r0, 0x29
/* 804BA2C4  40 81 00 0C */	ble lbl_804BA2D0
lbl_804BA2C8:
/* 804BA2C8  28 00 00 5D */	cmplwi r0, 0x5d
/* 804BA2CC  40 82 00 BC */	bne lbl_804BA388
lbl_804BA2D0:
/* 804BA2D0  57 60 A7 3F */	rlwinm. r0, r27, 0x14, 0x1c, 0x1f
/* 804BA2D4  38 E0 00 00 */	li r7, 0
/* 804BA2D8  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804BA2DC  40 82 00 24 */	bne lbl_804BA300
/* 804BA2E0  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804BA2E4  2C 00 00 08 */	cmpwi r0, 8
/* 804BA2E8  40 82 00 0C */	bne lbl_804BA2F4
/* 804BA2EC  38 E0 00 03 */	li r7, 3
/* 804BA2F0  48 00 00 10 */	b lbl_804BA300
lbl_804BA2F4:
/* 804BA2F4  2C 00 00 00 */	cmpwi r0, 0
/* 804BA2F8  40 82 00 08 */	bne lbl_804BA300
/* 804BA2FC  38 E0 00 01 */	li r7, 1
lbl_804BA300:
/* 804BA300  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BA304  7F 64 DB 78 */	mr r4, r27
/* 804BA308  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BA30C  7F 85 E3 78 */	mr r5, r28
/* 804BA310  3C 63 00 02 */	addis r3, r3, 2
/* 804BA314  7F E6 FB 78 */	mr r6, r31
/* 804BA318  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804BA31C  39 00 00 00 */	li r8, 0
/* 804BA320  80 63 00 00 */	lwz r3, 0(r3)
/* 804BA324  3C 63 00 01 */	addis r3, r3, 1
/* 804BA328  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BA32C  48 00 02 95 */	bl bIT_actor_drop_entry
/* 804BA330  2C 03 00 00 */	cmpwi r3, 0
/* 804BA334  41 82 00 58 */	beq lbl_804BA38C
/* 804BA338  A0 1E 00 00 */	lhz r0, 0(r30)
/* 804BA33C  28 00 00 11 */	cmplwi r0, 0x11
/* 804BA340  41 80 00 0C */	blt lbl_804BA34C
/* 804BA344  28 00 00 29 */	cmplwi r0, 0x29
/* 804BA348  40 81 00 38 */	ble lbl_804BA380
lbl_804BA34C:
/* 804BA34C  28 00 00 5D */	cmplwi r0, 0x5d
/* 804BA350  41 82 00 30 */	beq lbl_804BA380
/* 804BA354  80 DF 00 00 */	lwz r6, 0(r31)
/* 804BA358  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BA35C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804BA360  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BA364  38 81 00 08 */	addi r4, r1, 8
/* 804BA368  38 A0 00 00 */	li r5, 0
/* 804BA36C  90 C1 00 08 */	stw r6, 8(r1)
/* 804BA370  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BA374  80 1F 00 08 */	lwz r0, 8(r31)
/* 804BA378  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BA37C  4B EE D4 B5 */	bl mFI_SetFG_common
lbl_804BA380:
/* 804BA380  3B A0 00 01 */	li r29, 1
/* 804BA384  48 00 00 08 */	b lbl_804BA38C
lbl_804BA388:
/* 804BA388  3B A0 FF FF */	li r29, -1
lbl_804BA38C:
/* 804BA38C  7F A3 EB 78 */	mr r3, r29
/* 804BA390  39 61 00 40 */	addi r11, r1, 0x40
/* 804BA394  4B BE 0B 85 */	bl func_8009AF18
/* 804BA398  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BA39C  7C 08 03 A6 */	mtlr r0
/* 804BA3A0  38 21 00 40 */	addi r1, r1, 0x40
/* 804BA3A4  4E 80 00 20 */	blr 
