lbl_803F86B4:
/* 803F86B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F86B8  7C 08 02 A6 */	mflr r0
/* 803F86BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F86C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803F86C4  4B CA 27 FD */	bl func_8009AEC0
/* 803F86C8  7C 9F 23 78 */	mr r31, r4
/* 803F86CC  83 81 00 3C */	lwz r28, 0x3c(r1)
/* 803F86D0  7C 7E 1B 78 */	mr r30, r3
/* 803F86D4  7C B8 2B 78 */	mr r24, r5
/* 803F86D8  7C D9 33 78 */	mr r25, r6
/* 803F86DC  7D 1A 43 78 */	mr r26, r8
/* 803F86E0  7D 5B 53 78 */	mr r27, r10
/* 803F86E4  7F E3 FB 78 */	mr r3, r31
/* 803F86E8  3B A0 00 00 */	li r29, 0
/* 803F86EC  4B C9 5B 7D */	bl CARDGetResultCode
/* 803F86F0  90 78 00 00 */	stw r3, 0(r24)
/* 803F86F4  80 18 00 00 */	lwz r0, 0(r24)
/* 803F86F8  2C 00 00 00 */	cmpwi r0, 0
/* 803F86FC  40 82 00 B8 */	bne lbl_803F87B4
/* 803F8700  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 803F8704  38 03 20 00 */	addi r0, r3, 0x2000
/* 803F8708  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803F870C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803F8710  7C 7B 00 50 */	subf r3, r27, r0
/* 803F8714  7C 03 D0 00 */	cmpw r3, r26
/* 803F8718  41 80 00 20 */	blt lbl_803F8738
/* 803F871C  7F C3 F3 78 */	mr r3, r30
/* 803F8720  7F E4 FB 78 */	mr r4, r31
/* 803F8724  4B FF F6 F1 */	bl mCD_close_and_unmount
/* 803F8728  38 00 00 06 */	li r0, 6
/* 803F872C  3B A0 00 01 */	li r29, 1
/* 803F8730  90 1E 00 18 */	stw r0, 0x18(r30)
/* 803F8734  48 00 00 98 */	b lbl_803F87CC
lbl_803F8738:
/* 803F8738  7C 03 D0 50 */	subf r0, r3, r26
/* 803F873C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 803F8740  40 80 00 0C */	bge lbl_803F874C
/* 803F8744  90 1E 00 28 */	stw r0, 0x28(r30)
/* 803F8748  48 00 00 0C */	b lbl_803F8754
lbl_803F874C:
/* 803F874C  38 00 20 00 */	li r0, 0x2000
/* 803F8750  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_803F8754:
/* 803F8754  7C 19 1A 14 */	add r0, r25, r3
/* 803F8758  38 80 20 00 */	li r4, 0x2000
/* 803F875C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803F8760  80 7C 00 00 */	lwz r3, 0(r28)
/* 803F8764  4B C6 49 05 */	bl bzero
/* 803F8768  80 9C 00 00 */	lwz r4, 0(r28)
/* 803F876C  7F C3 F3 78 */	mr r3, r30
/* 803F8770  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 803F8774  38 E0 00 00 */	li r7, 0
/* 803F8778  80 DE 00 24 */	lwz r6, 0x24(r30)
/* 803F877C  4B C9 95 7D */	bl CARDReadAsync
/* 803F8780  90 78 00 00 */	stw r3, 0(r24)
/* 803F8784  80 18 00 00 */	lwz r0, 0(r24)
/* 803F8788  2C 00 00 00 */	cmpwi r0, 0
/* 803F878C  40 82 00 14 */	bne lbl_803F87A0
/* 803F8790  38 00 00 04 */	li r0, 4
/* 803F8794  3B A0 00 01 */	li r29, 1
/* 803F8798  90 1E 00 18 */	stw r0, 0x18(r30)
/* 803F879C  48 00 00 30 */	b lbl_803F87CC
lbl_803F87A0:
/* 803F87A0  7F C3 F3 78 */	mr r3, r30
/* 803F87A4  7F E4 FB 78 */	mr r4, r31
/* 803F87A8  4B FF F6 6D */	bl mCD_close_and_unmount
/* 803F87AC  3B A0 FF FF */	li r29, -1
/* 803F87B0  48 00 00 1C */	b lbl_803F87CC
lbl_803F87B4:
/* 803F87B4  2C 00 FF FF */	cmpwi r0, -1
/* 803F87B8  41 82 00 14 */	beq lbl_803F87CC
/* 803F87BC  7F C3 F3 78 */	mr r3, r30
/* 803F87C0  7F E4 FB 78 */	mr r4, r31
/* 803F87C4  4B FF F6 51 */	bl mCD_close_and_unmount
/* 803F87C8  3B A0 FF FF */	li r29, -1
lbl_803F87CC:
/* 803F87CC  7F A3 EB 78 */	mr r3, r29
/* 803F87D0  39 61 00 30 */	addi r11, r1, 0x30
/* 803F87D4  4B CA 27 39 */	bl func_8009AF0C
/* 803F87D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F87DC  7C 08 03 A6 */	mtlr r0
/* 803F87E0  38 21 00 30 */	addi r1, r1, 0x30
/* 803F87E4  4E 80 00 20 */	blr 
