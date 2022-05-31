lbl_805FCA48:
/* 805FCA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FCA4C  7C 08 02 A6 */	mflr r0
/* 805FCA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FCA54  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FCA58  80 C6 09 28 */	lwz r6, 0x928(r6)
/* 805FCA5C  70 C0 50 80 */	andi. r0, r6, 0x5080
/* 805FCA60  41 82 00 0C */	beq lbl_805FCA6C
/* 805FCA64  4B FF F9 89 */	bl mTG_move_cancel
/* 805FCA68  48 00 00 48 */	b lbl_805FCAB0
lbl_805FCA6C:
/* 805FCA6C  54 C0 04 21 */	rlwinm. r0, r6, 0, 0x10, 0x10
/* 805FCA70  41 82 00 0C */	beq lbl_805FCA7C
/* 805FCA74  4B FF FA C5 */	bl mTG_move_decide
/* 805FCA78  48 00 00 38 */	b lbl_805FCAB0
lbl_805FCA7C:
/* 805FCA7C  54 C0 06 B5 */	rlwinm. r0, r6, 0, 0x1a, 0x1a
/* 805FCA80  41 82 00 0C */	beq lbl_805FCA8C
/* 805FCA84  4B FF FC 5D */	bl mTG_move_catch
/* 805FCA88  48 00 00 28 */	b lbl_805FCAB0
lbl_805FCA8C:
/* 805FCA8C  54 C0 06 F7 */	rlwinm. r0, r6, 0, 0x1b, 0x1b
/* 805FCA90  41 82 00 0C */	beq lbl_805FCA9C
/* 805FCA94  4B FF FD 71 */	bl mTG_move_change
/* 805FCA98  48 00 00 18 */	b lbl_805FCAB0
lbl_805FCA9C:
/* 805FCA9C  54 C0 06 73 */	rlwinm. r0, r6, 0, 0x19, 0x19
/* 805FCAA0  41 82 00 0C */	beq lbl_805FCAAC
/* 805FCAA4  4B FF F8 05 */	bl mTG_mark_proc
/* 805FCAA8  48 00 00 08 */	b lbl_805FCAB0
lbl_805FCAAC:
/* 805FCAAC  4B FF FF 2D */	bl mTG_move_move
lbl_805FCAB0:
/* 805FCAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FCAB4  7C 08 03 A6 */	mtlr r0
/* 805FCAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 805FCABC  4E 80 00 20 */	blr 
