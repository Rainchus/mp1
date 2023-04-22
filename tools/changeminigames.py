header = """.include "macro.inc"

.section .data

dlabel D_800C4CD0
"""

"""
s8 FourPlayerMinigameList[] = {
MI_BURIED_TREASURE, MI_TREASURE_DIVERS, MI_HOT_BOBOMB, MI_MUSICAL_MUSHROOM, MI_CRAZY_CUTTER, MI_FACE_LIFT, MI_BALLOON_BURST, MI_COIN_BLOCK_BLITZ, MI_SKATEBOARD_SCAMPER, MI_BOX_MOUNTAIN_MAYHEM,
MI_PLATFORM_PERIL, MI_MUSHROOM_MIXUP, MI_GRAB_BAG, MI_BUMPER_BALLS, MI_TIPSY_TOURNEY, MI_BOMBS_AWAY, MI_SLOT_CAR_DERBY, MI_MARIO_BAND_STAND, MI_SHY_GUY_SAYS, MI_CAST_AWAYS,
MI_KEY_PA_WAY, MI_RUNNING_OF_THE_BULB, MI_HOT_ROPE_JUMP, MI_HAMMER_DROP,

MI_BURIED_TREASURE, MI_TREASURE_DIVERS, MI_HOT_BOBOMB, MI_MUSICAL_MUSHROOM, MI_CRAZY_CUTTER, MI_FACE_LIFT, MI_BALLOON_BURST, MI_SKATEBOARD_SCAMPER, MI_BOX_MOUNTAIN_MAYHEM,
MI_PLATFORM_PERIL, MI_MUSHROOM_MIXUP, MI_GRAB_BAG, MI_BUMPER_BALLS, MI_TIPSY_TOURNEY, MI_BOMBS_AWAY, MI_SLOT_CAR_DERBY, MI_MARIO_BAND_STAND, MI_SHY_GUY_SAYS, MI_CAST_AWAYS,
MI_KEY_PA_WAY, MI_RUNNING_OF_THE_BULB, MI_HOT_ROPE_JUMP, MI_HAMMER_DROP,
}; //list of all 4 player minigames

s8 OneVThreeMinigameList[] = {
MI_PIPE_MAZE, MI_BASH_N_CASH, MI_BOWL_OVER, MI_COIN_BLOCK_BASH, MI_TIGHTROPE_THREACHERY,
MI_CRANE_GAME, MI_PIRANHAS_PURSUIT, MI_TUG_O_WAR, MI_PADDLE_BATTLE, MI_COIN_SHOWER_FLOWER,
MI_PIPE_MAZE, MI_BASH_N_CASH, MI_BOWL_OVER, MI_COIN_BLOCK_BASH, MI_TIGHTROPE_THREACHERY,
MI_CRANE_GAME, MI_PIRANHAS_PURSUIT, MI_TUG_O_WAR, MI_PADDLE_BATTLE,
MI_PIPE_MAZE, MI_BASH_N_CASH, MI_BOWL_OVER, MI_TIGHTROPE_THREACHERY, MI_CRANE_GAME,
MI_PIRANHAS_PURSUIT, MI_TUG_O_WAR, MI_PADDLE_BATTLE
};

s8 TwoVTwoMinigameList[] = {
    MI_BOBSLED_RUN, MI_DESERT_DASH, MI_BOMBSKETBALL, MI_HANDCAR_HAVOC, MI_DEEP_SEA_DIVERS,
    MI_BOBSLED_RUN, MI_DESERT_DASH, MI_BOMBSKETBALL, MI_HANDCAR_HAVOC
};

s8 OnePlayerMinigameList[] = {
    MI_MEMORY_MATCH, MI_SLOT_MACHINE, MI_SHELL_GAME, MI_GHOST_GUESS, MI_PEDAL_POWER, MI_WHACK_A_PLANT, MI_GROUND_POUND, MI_TEETERING_TOWERS, MI_KNOCK_BLOCK_TOWER, MI_LIMBO_DANCE,
    MI_MEMORY_MATCH, MI_SHELL_GAME, MI_GHOST_GUESS, MI_PEDAL_POWER, MI_WHACK_A_PLANT, MI_GROUND_POUND, MI_TEETERING_TOWERS, MI_KNOCK_BLOCK_TOWER, MI_LIMBO_DANCE
};
"""

tail = """ dlabel D_800C4D3C
.byte 0x05, 0x03, 0x03, 0x05

"""

# FREE FOR ALL
MI_BURIED_TREASURE = "0x04"
MI_TREASURE_DIVERS = "0x05"
MI_HOT_BOBOMB = "0x08"
MI_CRAZY_CUTTER = "0x0E"
MI_MUSHROOM_MIXUP = "0x1B"
MI_GRAB_BAG = "0x1D"
MI_SHY_GUY_SAYS = "0x29"
MI_KEY_PA_WAY = "0x2D"
MI_RUNNING_OF_THE_BULB = "0x2E"
FREE_FOR_ALL = [MI_HOT_BOBOMB, MI_GRAB_BAG, MI_MUSHROOM_MIXUP, MI_SHY_GUY_SAYS, MI_RUNNING_OF_THE_BULB, MI_KEY_PA_WAY]
# ONE V THREE
MI_PIPE_MAZE = "0x0A"
MI_BASH_N_CASH = "0x11"
MI_BOWL_OVER = "0x12"
MI_COIN_BLOCK_BASH = "0x16"
ONE_V_THREE = [MI_BASH_N_CASH, MI_BOWL_OVER, MI_COIN_BLOCK_BASH]
# TWO V TWO
MI_BOBSLED_RUN = "0x1E"
MI_DESERT_DASH = '0x28'
MI_BOMBSKETBALL = "0x2B"
MI_HANDCAR_HAVOC = "0x30"
TWO_V_TWO = [MI_BOBSLED_RUN, MI_HANDCAR_HAVOC, MI_DESERT_DASH]
# ONE PLAYER
MI_WHACK_A_PLANT = "0x10"
ONE_PLAYER = [MI_WHACK_A_PLANT]

ALL_MINIGAMES = FREE_FOR_ALL + ONE_V_THREE + TWO_V_TWO

SPECIAL = []
for i in range(len(ALL_MINIGAMES)):
   SPECIAL.append(MI_WHACK_A_PLANT)
   SPECIAL.append(ALL_MINIGAMES[i])
"""
.byte 0x04
.byte 0x05
.byte 0x08
.byte 0x0C
.word 0x0E0F1415, 0x1718191B, 0x1D1F2223, 0x2627292C, 0x2D2E2F38, 0x0405080C, 0x0E0F1417, 0x18191B1D, 0x1F222326, 0x27292C2D, 0x2E2F3800, 0x0A111216, 0x20243334, 0x35370A11, 0x12162024, 0x3334350A, 0x11122024, 0x33343500, 0x1E282B30, 0x321E282B, 0x30000000, 0x0103060B, 0x0D10131A, 0x212A0106, 0x0B0D1013, 0x1A212A00, 0x05030305
"""



with open("minigames.txt", "w+") as f:
   f.write(header)

   f.write("/* Free-for-all Minigames */\n")
   for a in range(47):
      minigame = a % len(FREE_FOR_ALL)
      # f.write(".byte ") + f.write(MI_GRAB_BAG) + f.write("\n")
      f.write(".byte ") + f.write(FREE_FOR_ALL[minigame]) + f.write("\n")
   f.write(".byte 0x00\n") # Padding

   f.write("/* One-v-Three Player Minigames */\n")
   for a in range(27):
      minigame = a % len(ONE_V_THREE)
      # f.write(".byte ") + f.write(MI_BASH_N_CASH) + f.write("\n")
      f.write(".byte ") + f.write(ONE_V_THREE[minigame]) + f.write("\n")
   f.write(".byte 0x00\n") # Padding

   f.write("/* Two-v-Two Player Minigames */\n")
   for a in range(9):
      minigame = a % len(TWO_V_TWO)
      # f.write(".byte ") + f.write(MI_BOMBSKETBALL) + f.write("\n")
      f.write(".byte ") + f.write(TWO_V_TWO[minigame]) + f.write("\n")
   f.write(".byte 0x00\n") # Padding
   f.write(".byte 0x00\n") # Padding
   f.write(".byte 0x00\n") # Padding

   f.write("/* One Player Minigames */\n")
   for a in range(19):
      minigame = a % len(ONE_PLAYER)
      # f.write(".byte ") + f.write(MI_WHACK_A_PLANT) + f.write("\n")
      f.write(".byte ") + f.write(ONE_PLAYER[minigame]) + f.write("\n")
   f.write(".byte 0x00\n") # Padding

   f.write("/* TAIL WORD */\n")
   f.write(tail)
   f.close()