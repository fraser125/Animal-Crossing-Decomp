lbl_803E3238:
/* 803E3238  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E323C  7C 08 02 A6 */	mflr r0
/* 803E3240  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E3244  39 61 00 50 */	addi r11, r1, 0x50
/* 803E3248  4B CB 7C 85 */	bl func_8009AECC
/* 803E324C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E3250  7C 9B 23 79 */	or. r27, r4, r4
/* 803E3254  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 803E3258  3C C6 00 02 */	addis r6, r6, 2
/* 803E325C  3C A0 81 17 */	lis r5, l_mqst_grab@ha /* 0x811713E8@ha */
/* 803E3260  81 06 61 3C */	lwz r8, 0x613c(r6)
/* 803E3264  38 C5 13 E8 */	addi r6, r5, l_mqst_grab@l /* 0x811713E8@l */
/* 803E3268  83 86 00 04 */	lwz r28, 4(r6)
/* 803E326C  3B E8 00 94 */	addi r31, r8, 0x94
/* 803E3270  3B C8 02 EC */	addi r30, r8, 0x2ec
/* 803E3274  41 80 00 B8 */	blt lbl_803E332C
/* 803E3278  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803E327C  40 80 00 B0 */	bge lbl_803E332C
/* 803E3280  A0 E6 00 00 */	lhz r7, 0(r6)
/* 803E3284  57 60 08 3C */	slwi r0, r27, 1
/* 803E3288  7C A8 02 14 */	add r5, r8, r0
/* 803E328C  28 07 FF FF */	cmplwi r7, 0xffff
/* 803E3290  A3 A5 00 68 */	lhz r29, 0x68(r5)
/* 803E3294  41 82 00 8C */	beq lbl_803E3320
/* 803E3298  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803E329C  7C 00 38 40 */	cmplw r0, r7
/* 803E32A0  40 82 00 80 */	bne lbl_803E3320
/* 803E32A4  80 06 00 08 */	lwz r0, 8(r6)
/* 803E32A8  2C 00 00 01 */	cmpwi r0, 1
/* 803E32AC  41 82 00 40 */	beq lbl_803E32EC
/* 803E32B0  40 80 00 60 */	bge lbl_803E3310
/* 803E32B4  2C 00 00 00 */	cmpwi r0, 0
/* 803E32B8  40 80 00 08 */	bge lbl_803E32C0
/* 803E32BC  48 00 00 54 */	b lbl_803E3310
lbl_803E32C0:
/* 803E32C0  38 61 00 08 */	addi r3, r1, 8
/* 803E32C4  38 86 00 0C */	addi r4, r6, 0xc
/* 803E32C8  4B FF F8 0D */	bl mQst_CopyDelivery
/* 803E32CC  7F A3 EB 78 */	mr r3, r29
/* 803E32D0  7F 64 DB 78 */	mr r4, r27
/* 803E32D4  4B FF FE 25 */	bl mQst_CheckGrabItem
/* 803E32D8  1C 1B 00 28 */	mulli r0, r27, 0x28
/* 803E32DC  38 81 00 08 */	addi r4, r1, 8
/* 803E32E0  7C 7F 02 14 */	add r3, r31, r0
/* 803E32E4  4B FF F7 F1 */	bl mQst_CopyDelivery
/* 803E32E8  48 00 00 44 */	b lbl_803E332C
lbl_803E32EC:
/* 803E32EC  7F A3 EB 78 */	mr r3, r29
/* 803E32F0  4B FF FE 09 */	bl mQst_CheckGrabItem
/* 803E32F4  1C 7C 00 58 */	mulli r3, r28, 0x58
/* 803E32F8  7F 64 07 74 */	extsb r4, r27
/* 803E32FC  38 63 00 2A */	addi r3, r3, 0x2a
/* 803E3300  7C 1E 18 AE */	lbzx r0, r30, r3
/* 803E3304  50 80 1E 38 */	rlwimi r0, r4, 3, 0x18, 0x1c
/* 803E3308  7C 1E 19 AE */	stbx r0, r30, r3
/* 803E330C  48 00 00 20 */	b lbl_803E332C
lbl_803E3310:
/* 803E3310  7F A3 EB 78 */	mr r3, r29
/* 803E3314  7F 64 DB 78 */	mr r4, r27
/* 803E3318  4B FF FD E1 */	bl mQst_CheckGrabItem
/* 803E331C  48 00 00 10 */	b lbl_803E332C
lbl_803E3320:
/* 803E3320  7F A3 EB 78 */	mr r3, r29
/* 803E3324  7F 64 DB 78 */	mr r4, r27
/* 803E3328  4B FF FD D1 */	bl mQst_CheckGrabItem
lbl_803E332C:
/* 803E332C  39 61 00 50 */	addi r11, r1, 0x50
/* 803E3330  4B CB 7B E9 */	bl func_8009AF18
/* 803E3334  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E3338  7C 08 03 A6 */	mtlr r0
/* 803E333C  38 21 00 50 */	addi r1, r1, 0x50
/* 803E3340  4E 80 00 20 */	blr 
