lbl_805926B4:
/* 805926B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805926B8  7C 08 02 A6 */	mflr r0
/* 805926BC  38 80 00 01 */	li r4, 1
/* 805926C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805926C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805926C8  7C 7F 1B 78 */	mr r31, r3
/* 805926CC  38 60 00 04 */	li r3, 4
/* 805926D0  4B E0 5D AD */	bl mDemo_Get_OrderValue
/* 805926D4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805926D8  2C 00 00 02 */	cmpwi r0, 2
/* 805926DC  40 82 00 50 */	bne lbl_8059272C
/* 805926E0  38 60 00 05 */	li r3, 5
/* 805926E4  38 80 00 00 */	li r4, 0
/* 805926E8  38 A0 22 3A */	li r5, 0x223a
/* 805926EC  4B E0 5D 4D */	bl mDemo_Set_OrderValue
/* 805926F0  38 60 00 05 */	li r3, 5
/* 805926F4  38 80 00 01 */	li r4, 1
/* 805926F8  38 A0 00 07 */	li r5, 7
/* 805926FC  4B E0 5D 3D */	bl mDemo_Set_OrderValue
/* 80592700  38 60 00 05 */	li r3, 5
/* 80592704  38 80 00 02 */	li r4, 2
/* 80592708  38 A0 00 02 */	li r5, 2
/* 8059270C  4B E0 5D 2D */	bl mDemo_Set_OrderValue
/* 80592710  38 00 00 01 */	li r0, 1
/* 80592714  98 1F 09 A1 */	stb r0, 0x9a1(r31)
/* 80592718  4B E2 CF 91 */	bl func_803BF6A8
/* 8059271C  4B E2 E6 25 */	bl mMsg_Set_LockContinue
/* 80592720  7F E3 FB 78 */	mr r3, r31
/* 80592724  38 80 00 01 */	li r4, 1
/* 80592728  48 00 00 71 */	bl aNHM_change_talk_proc
lbl_8059272C:
/* 8059272C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80592734  7C 08 03 A6 */	mtlr r0
/* 80592738  38 21 00 10 */	addi r1, r1, 0x10
/* 8059273C  4E 80 00 20 */	blr 
