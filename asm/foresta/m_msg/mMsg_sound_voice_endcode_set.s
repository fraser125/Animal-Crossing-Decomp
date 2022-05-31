lbl_803C200C:
/* 803C200C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2010  7C 08 02 A6 */	mflr r0
/* 803C2014  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C201C  7C 7F 1B 78 */	mr r31, r3
/* 803C2020  4B FF FE E9 */	bl mMsg_sound_npc_id_get
/* 803C2024  7C 60 1B 78 */	mr r0, r3
/* 803C2028  38 60 00 84 */	li r3, 0x84
/* 803C202C  7C 06 07 34 */	extsh r6, r0
/* 803C2030  38 80 00 FF */	li r4, 0xff
/* 803C2034  38 A0 00 FF */	li r5, 0xff
/* 803C2038  38 E0 00 20 */	li r7, 0x20
/* 803C203C  39 00 00 00 */	li r8, 0
/* 803C2040  48 26 BE 25 */	bl sAdo_VoiceSe
/* 803C2044  38 00 00 00 */	li r0, 0
/* 803C2048  3C 60 FF FC */	lis r3, 0xFFFC /* 0xFFFBFFDF@ha */
/* 803C204C  98 1F 04 03 */	stb r0, 0x403(r31)
/* 803C2050  38 03 FF DF */	addi r0, r3, 0xFFDF /* 0xFFFBFFDF@l */
/* 803C2054  80 7F 04 0C */	lwz r3, 0x40c(r31)
/* 803C2058  7C 60 00 38 */	and r0, r3, r0
/* 803C205C  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C2060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2068  7C 08 03 A6 */	mtlr r0
/* 803C206C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2070  4E 80 00 20 */	blr 
